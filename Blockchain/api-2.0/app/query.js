const { Gateway, Wallets, } = require('fabric-network');
const fs = require('fs');
const path = require("path")
const log4js = require('log4js');
const logger = log4js.getLogger('BasicNetwork');
const util = require('util')


const helper = require('./helper')
const query = async (channelName, chaincodeName, args, fcn, username, org_name) => {

    try {
        console.log("are we here?-query")
        const ccp = await helper.getCCP(org_name);

        const walletPath = await helper.getWalletPath(org_name);
        const wallet = await Wallets.newFileSystemWallet(walletPath);
        console.log(`Wallet path: ${walletPath}`);

        let identity = await wallet.get(username);
        if (!identity) {
            console.log(`An identity for the user ${username} does not exist in the wallet, so registering user`);
            await helper.getRegisteredUser(username, org_name, true)
            identity = await wallet.get(username);
            console.log('Run the registerUser.js application before retrying');
            return;
        }

        const gateway = new Gateway();
        await gateway.connect(ccp, {
            wallet, identity: username, discovery: { enabled: true, asLocalhost: true }
        });

        const network = await gateway.getNetwork(channelName);
        const contract = network.getContract(chaincodeName);
        let result;

        fcn = JSON.parse(fcn)

        if (fcn == "getAllTickets") {
            result = await contract.evaluateTransaction(fcn);
        } 
        else if (fcn == "getRecordByKey" || fcn == "getRecordHistory" || fcn == "getAssetHistory" || fcn == "getAssetByID" || fcn == "getAssetEndOfLifeStatusHistory" || fcn == "getAssetEndOfLifeStatusByKey" || fcn == "getAllResults" || fcn == "getAllRecordsForKey") {
            result = await contract.evaluateTransaction(fcn, args[0])
        } 
        else if ( fcn == "verifyClaim") {
            result = await contract.evaluateTransaction(fcn, args[0], args[1], args[2], args[3])
        }
        else {
            throw new Error("Function Not supported");
        }
        
        console.log("result", result)
        console.log(`Transaction has been evaluated, result is: ${result.toString()}`);

        result = JSON.parse(result.toString());
        return result
    } catch (error) {
        console.error(`Failed to evaluate transaction: ${error}`);
        return error.message

    }
}

exports.query = query
