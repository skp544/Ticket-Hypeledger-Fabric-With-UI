import React, { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import axios from "../apis/axiosConfig"; // Import your axios instance
import { getAllTicket } from "../apis/api";

const Dashboard = () => {
  const [tickets, setTickets] = useState([]);
  const [error, setError] = useState(null);
  const navigate = useNavigate();

  // Fetch data from the API
  useEffect(() => {
    const fetchTickets = async () => {
      try {
        const response = await getAllTicket();
        setTickets(response.result); // Assuming result contains the ticket array
      } catch (err) {
        setError("Failed to fetch tickets");
        console.error(err);
      }
    };

    fetchTickets();
  }, []);

  return (
    <div className="p-8 bg-gray-100 min-h-screen">
      {/* Header Section */}
      <div className="flex justify-between items-center mb-6">
        <h1 className="text-2xl font-bold">Dashboard</h1>
        <button
          onClick={() => navigate("/create")}
          className="bg-blue-600 text-white px-4 py-2 rounded shadow hover:bg-blue-700"
        >
          Create +
        </button>
      </div>

      {/* Error Message */}
      {error && <p className="text-red-500">{error}</p>}

      {/* Tickets List */}
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        {tickets.map((ticket) => (
          <div key={ticket.Key} className="bg-white p-4 rounded shadow">
            <h2 className="text-lg font-semibold">
              Ticket ID: {ticket.Record.id}
            </h2>
            <p>
              <strong>Bus:</strong> {ticket.Record.bus}
            </p>
            <p>
              <strong>Trip:</strong> {ticket.Record.trip_id}
            </p>
            <p>
              <strong>Check-in:</strong>{" "}
              {new Date(ticket.Record.check_in).toLocaleString()}
            </p>
            <p>
              <strong>Check-out:</strong>{" "}
              {new Date(ticket.Record.check_out).toLocaleString()}
            </p>
            <p>
              <strong>Status:</strong> {ticket.Record.status}
            </p>
            <p>
              <strong>Revenue:</strong> ${ticket.Record.revenue}
            </p>
          </div>
        ))}
      </div>
    </div>
  );
};

export default Dashboard;
