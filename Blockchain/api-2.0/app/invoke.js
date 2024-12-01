const {
  Gateway,
  Wallets,
  TxEventHandler,
  GatewayOptions,
  DefaultEventHandlerStrategies,
  TxEventHandlerFactory,
} = require("fabric-network");
const fs = require("fs");
const path = require("path");
const log4js = require("log4js");
const logger = log4js.getLogger("BasicNetwork");
const util = require("util");
let resultJSON;

const helper = require("./helper");

const invokeTransaction = async (
  channelName,
  chaincodeName,
  fcn,
  args,
  username,
  org_name,
  transientData
) => {
  try {
    logger.debug(
      util.format(
        "\n============ invoke transaction on channel %s ============\n",
        channelName
      )
    );
    const ccp = await helper.getCCP(org_name);
    const walletPath = await helper.getWalletPath(org_name);
    const wallet = await Wallets.newFileSystemWallet(walletPath);

    console.log("start");
    console.log(ccp);
    console.log(walletPath);
    console.log(wallet);
    console.log("end");
    console.log(`Wallet path: ${walletPath}`);

    let identity = await wallet.get(username);
    if (!identity) {
      console.log(
        `An identity for the user ${username} does not exist in the wallet, so registering user`
      );
      await helper.getRegisteredUser(username, org_name, true);
      identity = await wallet.get(username);
      console.log("Run the registerUser.js application before retrying");
      return;
    }

    const connectOptions = {
      wallet,
      identity: username,
      discovery: { enabled: true, asLocalhost: true },
      eventHandlerOptions: {
        commitTimeout: 100,
        strategy: DefaultEventHandlerStrategies.NETWORK_SCOPE_ALLFORTX,
      },
    };

    const gateway = new Gateway();
    await gateway.connect(ccp, connectOptions);

    const network = await gateway.getNetwork(channelName);

    const contract = network.getContract(chaincodeName);

    let result;
    let message;

    // console.log("fcn", fcn)
    // console.log("args", args)
    if (fcn === "createTicket") {
      result = await contract.submitTransaction(fcn, args);
      message = `Successfully added data `;
    } else if (fcn == "updateAsset" || fcn == "updateRecord" || fcn === "update" || fcn === "updateAssetEndOfLifeStatus") {
      result = await contract.submitTransaction(fcn, args[0], args[1]);
      message = `Successfully updated data `;
    } else if (fcn == "createRecordWithClaim") {
      result = await contract.submitTransaction(fcn, args[0], args[1]);
      message = `Successfully added data with claim`;
    }else {
      return `Invocation require either createAsset , createRecordWithClaim, createRecord as function but got ${fcn}`;
    }

    await gateway.disconnect();

    let response = {
      message: message,
      result,
      resultJSON
    };

    return response;
  } catch (error) {
    console.log(`Getting error: ${error}`);
    return error.message;
  }
};

exports.invokeTransaction = invokeTransaction;
