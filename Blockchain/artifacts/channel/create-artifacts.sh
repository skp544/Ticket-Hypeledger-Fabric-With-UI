
chmod -R 0755 ./crypto-config
rm -rf ./crypto-config
rm genesis.block mychannel.tx
rm -rf ../../channel-artifacts/*

cryptogen generate --config=./crypto-config.yaml --output=./crypto-config/
SYS_CHANNEL="sys-channel"

configtxgen -profile OrdererGenesis -configPath . -channelID $SYS_CHANNEL  -outputBlock ./genesis.block


# channel name defaults to "ecosystemchannel1"
CHANNEL_NAME1="channel1"

echo $CHANNEL_NAME1

# # Generate channel configuration block
configtxgen -profile channel1 -configPath . -outputCreateChannelTx ./channel1.tx -channelID $CHANNEL_NAME1

echo "#######    Generating anchor peer update for Org1MSP  ##########"x
configtxgen -profile channel1 -configPath . -outputAnchorPeersUpdate ./Org1MSPanchors_$CHANNEL_NAME1.tx -channelID $CHANNEL_NAME1 -asOrg Org1MSP

echo "#######    Generating anchor peer update for Org2MSP  ##########"
configtxgen -profile channel1 -configPath . -outputAnchorPeersUpdate ./Org2MSPanchors_$CHANNEL_NAME1.tx -channelID $CHANNEL_NAME1 -asOrg Org2MSP

echo "#######    Generating anchor peer update for Org3MSP  ##########"
configtxgen -profile channel1 -configPath . -outputAnchorPeersUpdate ./Org3MSPanchors_$CHANNEL_NAME1.tx -channelID $CHANNEL_NAME1 -asOrg Org3MSP

echo "#######    Generating anchor peer update for Org4MSP  ##########"
configtxgen -profile channel1 -configPath . -outputAnchorPeersUpdate ./Org4MSPanchors_$CHANNEL_NAME1.tx -channelID $CHANNEL_NAME1 -asOrg Org4MSP

echo "#######    Generating anchor peer update for Org5MSP  ##########"
configtxgen -profile channel1 -configPath . -outputAnchorPeersUpdate ./Org5MSPanchors_$CHANNEL_NAME1.tx -channelID $CHANNEL_NAME1 -asOrg Org5MSP

