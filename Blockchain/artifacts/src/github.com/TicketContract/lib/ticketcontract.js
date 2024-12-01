"use strict";

const { Contract } = require("fabric-contract-api");

class TicketContract extends Contract {
  async initLedger(ctx) {
    console.info("========== START: Initialize Ticket Ledger ==========");
    console.log("Ticket Ledger Initialized");
    console.info("========== END: Initialize Ticket Ledger ==========");
  }

  async createTicket(ctx, ticketJson) {
    console.info("========== START: Creating Ticket ==========");

    let ticket;
    try {
      ticket = JSON.parse(ticketJson);
    } catch (err) {
      throw new Error("Failed to parse input JSON");
    }

    // Required fields validation
    const requiredFields = [
      "id",
      "trip_id",
      "status",
      "revenue",
      "rapid",
      "cm",
      "bus",
      "refund",
      "check_in",
      "check_out",
      "traveller_id",
    ];

    requiredFields.forEach((field) => {
      if (ticket[field] === undefined || ticket[field] === null || ticket[field] === "") {
        throw new Error(`Field ${field} is required and cannot be empty.`);
      }
    });

    // Check for duplicate ticket ID
    const ticketExists = await this._checkIfKeyExists(ctx, ticket.id);
    if (ticketExists) {
      throw new Error(`Ticket with ID ${ticket.id} already exists.`);
    }

    // Add ticket to the ledger
    await ctx.stub.putState(ticket.id, Buffer.from(JSON.stringify(ticket)));
    console.info("========== END: Ticket Created ==========");

    return ctx.stub.getTxID();
  }

  async _checkIfKeyExists(ctx, ticketId) {
    const ticketBuffer = await ctx.stub.getState(ticketId);
    return ticketBuffer && ticketBuffer.length > 0;
  }

  async getTicketById(ctx, ticketId) {
    const ticketBuffer = await ctx.stub.getState(ticketId);
    if (!ticketBuffer || ticketBuffer.length === 0) {
      throw new Error(`Ticket with ID ${ticketId} does not exist.`);
    }

    try {
      return JSON.parse(ticketBuffer.toString());
    } catch (err) {
      throw new Error("Failed to parse ticket data as JSON");
    }
  }

  async updateTicket(ctx, ticketId, updateValuesJson) {
    const ticketBuffer = await ctx.stub.getState(ticketId);
    if (!ticketBuffer || ticketBuffer.length === 0) {
      throw new Error(`No ticket found with ID ${ticketId} to update.`);
    }

    let updateValues;
    try {
      updateValues = JSON.parse(updateValuesJson);
    } catch (err) {
      throw new Error("Failed to parse the update JSON values");
    }

    const ticket = JSON.parse(ticketBuffer.toString());
    console.info(`Updating fields for ticket ID ${ticketId}`);

    // Update fields
    Object.keys(updateValues).forEach((key) => {
      ticket[key] = updateValues[key];
    });

    await ctx.stub.putState(ticketId, Buffer.from(JSON.stringify(ticket)));
    console.info(`Ticket ID ${ticketId} updated successfully`);

    return ctx.stub.getTxID();
  }

  async getAllTickets(ctx) {
    const allResults = [];
    const iterator = await ctx.stub.getStateByRange("", "");

    try {
      let result = await iterator.next();
      while (!result.done) {
        const strValue = Buffer.from(result.value.value.toString()).toString("utf8");
        let record;
        try {
          record = JSON.parse(strValue);
        } catch (err) {
          console.error(`Failed to parse record with key ${result.value.key}: ${err}`);
          record = null;
        }
        if (record !== null) {
          allResults.push({ Key: result.value.key, Record: record });
        }
        result = await iterator.next();
      }
    } finally {
      await iterator.close();
    }

    return JSON.stringify(allResults);
  }

  async getTicketHistory(ctx, ticketId) {
    const resultsIterator = await ctx.stub.getHistoryForKey(ticketId);
    const allResults = [];

    try {
      let result = await resultsIterator.next();
      while (!result.done) {
        const record = {
          txId: result.value.txId,
          timestamp: result.value.timestamp,
          isDelete: result.value.is_delete,
          value: result.value.value.toString("utf8"),
        };

        try {
          record.value = JSON.parse(record.value);
        } catch (err) {
          // Leave as string if parsing fails
        }

        allResults.push(record);
        result = await resultsIterator.next();
      }
    } finally {
      await resultsIterator.close();
    }

    return JSON.stringify(allResults);
  }
}

module.exports = TicketContract;
