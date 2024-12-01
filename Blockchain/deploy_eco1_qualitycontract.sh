export CORE_PEER_TLS_ENABLED=true
export ORDERER_CA=${PWD}/artifacts/channel/crypto-config/ordererOrganizations/example.com/orderers/orderer1.example.com/msp/tlscacerts/tlsca.example.com-cert.pem
export PEER0_ORG0_CA=${PWD}/artifacts/channel/crypto-config/peerOrganizations/oemorgp1.example.com/peers/peer0.oemorgp1.example.com/tls/ca.crt
export PEER0_ORG1_CA=${PWD}/artifacts/channel/crypto-config/peerOrganizations/supplierorgs5.example.com/peers/peer0.supplierorgs5.example.com/tls/ca.crt
export PEER0_ORG2_CA=${PWD}/artifacts/channel/crypto-config/peerOrganizations/supplierorgs1.example.com/peers/peer0.supplierorgs1.example.com/tls/ca.crt
export PEER0_ORG3_CA=${PWD}/artifacts/channel/crypto-config/peerOrganizations/supplierorgs6.example.com/peers/peer0.supplierorgs6.example.com/tls/ca.crt
export PEER0_ORG4_CA=${PWD}/artifacts/channel/crypto-config/peerOrganizations/customerorgc1.example.com/peers/peer0.customerorgc1.example.com/tls/ca.crt
export PEER0_ORG5_CA=${PWD}/artifacts/channel/crypto-config/peerOrganizations/supplierorgs2.example.com/peers/peer0.supplierorgs2.example.com/tls/ca.crt
export PEER0_ORG6_CA=${PWD}/artifacts/channel/crypto-config/peerOrganizations/supplierorgs3.example.com/peers/peer0.supplierorgs3.example.com/tls/ca.crt
export PEER0_ORG7_CA=${PWD}/artifacts/channel/crypto-config/peerOrganizations/customerorgc2.example.com/peers/peer0.customerorgc2.example.com/tls/ca.crt
export PEER0_ORG8_CA=${PWD}/artifacts/channel/crypto-config/peerOrganizations/supplierorgs4.example.com/peers/peer0.supplierorgs4.example.com/tls/ca.crt
export PEER0_ORG9_CA=${PWD}/artifacts/channel/crypto-config/peerOrganizations/dismantlerorgd1.example.com/peers/peer0.dismantlerorgd1.example.com/tls/ca.crt
export PEER0_ORG10_CA=${PWD}/artifacts/channel/crypto-config/peerOrganizations/dismantlerorgd2.example.com/peers/peer0.dismantlerorgd2.example.com/tls/ca.crt

export PRIVATE_DATA_CONFIG=${PWD}/artifacts/private-data/private_collections_config.json
export FABRIC_CFG_PATH=${PWD}/artifacts/channel/config/

setGlobalsForPeer0OEMOrgP1(){
    export CORE_PEER_LOCALMSPID="OEMOrgP1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG0_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/oemorgp1.example.com/users/Admin@oemorgp1.example.com/msp
    export CORE_PEER_ADDRESS=localhost:7051
}

setGlobalsForPeer1OEMOrgP1(){
    export CORE_PEER_LOCALMSPID="OEMOrgP1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG0_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/oemorgp1.example.com/users/Admin@oemorgp1.example.com/msp
    export CORE_PEER_ADDRESS=localhost:8051    
}

setGlobalsForPeer0SupplierOrgS5(){
    export CORE_PEER_LOCALMSPID="SupplierOrgS5MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG1_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/supplierorgs5.example.com/users/Admin@supplierorgs5.example.com/msp
    export CORE_PEER_ADDRESS=localhost:9051    
}

setGlobalsForPeer1SupplierOrgS5(){
    export CORE_PEER_LOCALMSPID="SupplierOrgS5MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG1_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/supplierorgs5.example.com/users/Admin@supplierorgs5.example.com/msp
    export CORE_PEER_ADDRESS=localhost:10051    
}

setGlobalsForPeer0SupplierOrgS1(){
    export CORE_PEER_LOCALMSPID="SupplierOrgS1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG2_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/supplierorgs1.example.com/users/Admin@supplierorgs1.example.com/msp
    export CORE_PEER_ADDRESS=localhost:11051
}

setGlobalsForPeer1SupplierOrgS1(){
    export CORE_PEER_LOCALMSPID="SupplierOrgS1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG2_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/supplierorgs1.example.com/users/Admin@supplierorgs1.example.com/msp
    export CORE_PEER_ADDRESS=localhost:12051    
}

setGlobalsForPeer0SupplierOrgS6(){
    export CORE_PEER_LOCALMSPID="SupplierOrgS6MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG3_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/supplierorgs6.example.com/users/Admin@supplierorgs6.example.com/msp
    export CORE_PEER_ADDRESS=localhost:13051
}

setGlobalsForPeer1SupplierOrgS6(){
    export CORE_PEER_LOCALMSPID="SupplierOrgS6MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG3_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/supplierorgs6.example.com/users/Admin@supplierorgs6.example.com/msp
    export CORE_PEER_ADDRESS=localhost:14051    
}

setGlobalsForPeer0CustomerOrgC1(){
    export CORE_PEER_LOCALMSPID="CustomerOrgC1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG4_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/customerorgc1.example.com/users/Admin@customerorgc1.example.com/msp
    export CORE_PEER_ADDRESS=localhost:15051
}

setGlobalsForPeer1CustomerOrgC1(){
    export CORE_PEER_LOCALMSPID="CustomerOrgC1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG4_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/customerorgc1.example.com/users/Admin@customerorgc1.example.com/msp
    export CORE_PEER_ADDRESS=localhost:16051    
}


setGlobalsForPeer0SupplierOrgS2(){
    export CORE_PEER_LOCALMSPID="SupplierOrgS2MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG5_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/supplierorgs2.example.com/users/Admin@supplierorgs2.example.com/msp
    export CORE_PEER_ADDRESS=localhost:17051
}

setGlobalsForPeer1SupplierOrgS2(){
    export CORE_PEER_LOCALMSPID="SupplierOrgS2MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG5_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/supplierorgs2.example.com/users/Admin@supplierorgs2.example.com/msp
    export CORE_PEER_ADDRESS=localhost:18051    
}

setGlobalsForPeer0SupplierOrgS3(){
    export CORE_PEER_LOCALMSPID="SupplierOrgS3MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG6_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/supplierorgs3.example.com/users/Admin@supplierorgs3.example.com/msp
    export CORE_PEER_ADDRESS=localhost:19051
}

setGlobalsForPeer1SupplierOrgS3(){
    export CORE_PEER_LOCALMSPID="SupplierOrgS3MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG6_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/supplierorgs3.example.com/users/Admin@supplierorgs3.example.com/msp
    export CORE_PEER_ADDRESS=localhost:20051    
}

setGlobalsForPeer0CustomerOrgC2(){
    export CORE_PEER_LOCALMSPID="CustomerOrgC2MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG7_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/customerorgc2.example.com/users/Admin@customerorgc2.example.com/msp
    export CORE_PEER_ADDRESS=localhost:21051
}

setGlobalsForPeer1CustomerOrgC2(){
    export CORE_PEER_LOCALMSPID="CustomerOrgC2MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG7_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/customerorgc2.example.com/users/Admin@customerorgc2.example.com/msp
    export CORE_PEER_ADDRESS=localhost:22051    
}

setGlobalsForPeer0SupplierOrgS4(){
    export CORE_PEER_LOCALMSPID="SupplierOrgS4MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG8_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/supplierorgs4.example.com/users/Admin@supplierorgs4.example.com/msp
    export CORE_PEER_ADDRESS=localhost:23051
}   

setGlobalsForPeer1SupplierOrgS4(){
    export CORE_PEER_LOCALMSPID="SupplierOrgS4MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG8_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/supplierorgs4.example.com/users/Admin@supplierorgs4.example.com/msp
    export CORE_PEER_ADDRESS=localhost:24051    
}

setGlobalsForPeer0DismantlerOrgD1(){
    export CORE_PEER_LOCALMSPID="DismantlerOrgD1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG9_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/dismantlerorgd1.example.com/users/Admin@dismantlerorgd1.example.com/msp
    export CORE_PEER_ADDRESS=localhost:25051
}   

setGlobalsForPeer1DismantlerOrgD1(){
    export CORE_PEER_LOCALMSPID="DismantlerOrgD1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG9_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/dismantlerorgd1.example.com/users/Admin@dismantlerorgd1.example.com/msp
    export CORE_PEER_ADDRESS=localhost:26051    
}

setGlobalsForPeer0DismantlerOrgD2(){
    export CORE_PEER_LOCALMSPID="DismantlerOrgD2MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG10_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/dismantlerorgd2.example.com/users/Admin@dismantlerorgd2.example.com/msp
    export CORE_PEER_ADDRESS=localhost:27051
}   

setGlobalsForPeer1DismantlerOrgD2(){
    export CORE_PEER_LOCALMSPID="DismantlerOrgD2MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG10_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/dismantlerorgd2.example.com/users/Admin@dismantlerorgd2.example.com/msp
    export CORE_PEER_ADDRESS=localhost:28051    
}

CHANNEL_NAME="ecosystemchannel1"
CC_RUNTIME_LANGUAGE="node"
VERSION="1"
CC_SRC_PATH="./artifacts/src/github.com/QualityContract"
CC_NAME="qualitycontract"


packageChaincode() {
    rm -rf ${CC_NAME}.tar.gz
    setGlobalsForPeer0OEMOrgP1
    peer lifecycle chaincode package ${CC_NAME}.tar.gz \
        --path ${CC_SRC_PATH} --lang ${CC_RUNTIME_LANGUAGE} \
        --label ${CC_NAME}_${VERSION}
    echo "===================== Chaincode is packaged on starting org peer0.oemorgp1 on channel: ${CHANNEL_NAME} ===================== "
}


installChaincode() {
    setGlobalsForPeer0OEMOrgP1
    peer lifecycle chaincode install ${CC_NAME}.tar.gz
    echo "===================== Chaincode is installed on peer0.oemorgp1 on channel: ${CHANNEL_NAME} ===================== "

    setGlobalsForPeer0SupplierOrgS1
    peer lifecycle chaincode install ${CC_NAME}.tar.gz
    echo "===================== Chaincode is installed on peer0.supplierorgs1 on channel: ${CHANNEL_NAME} ===================== "

    setGlobalsForPeer0SupplierOrgS2
    peer lifecycle chaincode install ${CC_NAME}.tar.gz
    echo "===================== Chaincode is installed on peer0.supplierorgs2 on channel: ${CHANNEL_NAME} ===================== "

    setGlobalsForPeer0SupplierOrgS3
    peer lifecycle chaincode install ${CC_NAME}.tar.gz
    echo "===================== Chaincode is installed on peer0.supplierorgs3 on channel: ${CHANNEL_NAME} ===================== "

    setGlobalsForPeer0SupplierOrgS4
    peer lifecycle chaincode install ${CC_NAME}.tar.gz
    echo "===================== Chaincode is installed on peer0.supplierorgs4 on channel: ${CHANNEL_NAME} ===================== "

    setGlobalsForPeer0SupplierOrgS5
    peer lifecycle chaincode install ${CC_NAME}.tar.gz
    echo "===================== Chaincode is installed on peer0.supplierorgs5 on channel: ${CHANNEL_NAME} ===================== "
    
    setGlobalsForPeer0SupplierOrgS6
    peer lifecycle chaincode install ${CC_NAME}.tar.gz
    echo "===================== Chaincode is installed on peer0.supplierorgs6 on channel: ${CHANNEL_NAME} ===================== "

    setGlobalsForPeer0CustomerOrgC1
    peer lifecycle chaincode install ${CC_NAME}.tar.gz
    echo "===================== Chaincode is installed on peer0.customerorgc1 on channel: ${CHANNEL_NAME} ===================== "

    setGlobalsForPeer0CustomerOrgC2
    peer lifecycle chaincode install ${CC_NAME}.tar.gz
    echo "===================== Chaincode is installed on peer0.customerorgc2 on channel: ${CHANNEL_NAME} ===================== "

    setGlobalsForPeer0DismantlerOrgD1
    peer lifecycle chaincode install ${CC_NAME}.tar.gz
    echo "===================== Chaincode is installed on peer0.dismantlerorgd1 on channel: ${CHANNEL_NAME} ===================== "
    
    setGlobalsForPeer0DismantlerOrgD2
    peer lifecycle chaincode install ${CC_NAME}.tar.gz
    echo "===================== Chaincode is installed on peer0.dismantlerorgd2 on channel: ${CHANNEL_NAME} ===================== "
}

queryInstalled0() {
    setGlobalsForPeer0OEMOrgP1
    peer lifecycle chaincode queryinstalled >&log.txt
    cat log.txt
    PACKAGE_ID=$(sed -n "/${CC_NAME}_${VERSION}/{s/^Package ID: //; s/, Label:.*$//; p;}" log.txt)
    echo PackageID is ${PACKAGE_ID}
    echo "===================== Query installed successful on peer0.oemorgp1 on channel: ${CHANNEL_NAME} ===================== "
}

queryInstalled1() {
    setGlobalsForPeer0SupplierOrgS1
    peer lifecycle chaincode queryinstalled >&log.txt
    cat log.txt
    PACKAGE_ID=$(sed -n "/${CC_NAME}_${VERSION}/{s/^Package ID: //; s/, Label:.*$//; p;}" log.txt)
    echo PackageID is ${PACKAGE_ID}
    echo "===================== Query installed successful on peer0.supplierorgs1 channel: ${CHANNEL_NAME} ===================== "
}

queryInstalled2() {
    setGlobalsForPeer0SupplierOrgS2
    peer lifecycle chaincode queryinstalled >&log.txt
    cat log.txt
    PACKAGE_ID=$(sed -n "/${CC_NAME}_${VERSION}/{s/^Package ID: //; s/, Label:.*$//; p;}" log.txt)
    echo PackageID is ${PACKAGE_ID}
    echo "===================== Query installed successful on peer0.supplierorgs2 channel: ${CHANNEL_NAME} ===================== "
}

queryInstalled3() {
    setGlobalsForPeer0SupplierOrgS3
    peer lifecycle chaincode queryinstalled >&log.txt
    cat log.txt
    PACKAGE_ID=$(sed -n "/${CC_NAME}_${VERSION}/{s/^Package ID: //; s/, Label:.*$//; p;}" log.txt)
    echo PackageID is ${PACKAGE_ID}
    echo "===================== Query installed successful on peer0.supplierorgs3 channel: ${CHANNEL_NAME} ===================== "
}

queryInstalled4() {
    setGlobalsForPeer0SupplierOrgS4
    peer lifecycle chaincode queryinstalled >&log.txt
    cat log.txt
    PACKAGE_ID=$(sed -n "/${CC_NAME}_${VERSION}/{s/^Package ID: //; s/, Label:.*$//; p;}" log.txt)
    echo PackageID is ${PACKAGE_ID}
    echo "===================== Query installed successful on peer0.supplierorgs4 channel: ${CHANNEL_NAME} ===================== "
}

queryInstalled5() {
    setGlobalsForPeer0SupplierOrgS5
    peer lifecycle chaincode queryinstalled >&log.txt
    cat log.txt
    PACKAGE_ID=$(sed -n "/${CC_NAME}_${VERSION}/{s/^Package ID: //; s/, Label:.*$//; p;}" log.txt)
    echo PackageID is ${PACKAGE_ID}
    echo "===================== Query installed successful on peer0.supplierorgs5 channel: ${CHANNEL_NAME} ===================== "
}

queryInstalled6() {
    setGlobalsForPeer0SupplierOrgS6
    peer lifecycle chaincode queryinstalled >&log.txt
    cat log.txt
    PACKAGE_ID=$(sed -n "/${CC_NAME}_${VERSION}/{s/^Package ID: //; s/, Label:.*$//; p;}" log.txt)
    echo PackageID is ${PACKAGE_ID}
    echo "===================== Query installed successful on peer0.supplierorgs6 channel: ${CHANNEL_NAME} ===================== "
}

queryInstalled7() {
    setGlobalsForPeer0CustomerOrgC1
    peer lifecycle chaincode queryinstalled >&log.txt
    cat log.txt
    PACKAGE_ID=$(sed -n "/${CC_NAME}_${VERSION}/{s/^Package ID: //; s/, Label:.*$//; p;}" log.txt)
    echo PackageID is ${PACKAGE_ID}
    echo "===================== Query installed successful on peer0.customerorgc1 on channel: ${CHANNEL_NAME} ===================== "
}

queryInstalled8() {
    setGlobalsForPeer0CustomerOrgC2
    peer lifecycle chaincode queryinstalled >&log.txt
    cat log.txt
    PACKAGE_ID=$(sed -n "/${CC_NAME}_${VERSION}/{s/^Package ID: //; s/, Label:.*$//; p;}" log.txt)
    echo PackageID is ${PACKAGE_ID}
    echo "===================== Query installed successful on peer0.customerorgc2 on channel: ${CHANNEL_NAME} ===================== "
}

queryInstalled9() {
    setGlobalsForPeer0DismantlerOrgD1
    peer lifecycle chaincode queryinstalled >&log.txt
    cat log.txt
    PACKAGE_ID=$(sed -n "/${CC_NAME}_${VERSION}/{s/^Package ID: //; s/, Label:.*$//; p;}" log.txt)
    echo PackageID is ${PACKAGE_ID}
    echo "===================== Query installed successful on peer0.dismantlerorgd1 on channel: ${CHANNEL_NAME} ===================== "
}

queryInstalled10() {
    setGlobalsForPeer0DismantlerOrgD2
    peer lifecycle chaincode queryinstalled >&log.txt
    cat log.txt
    PACKAGE_ID=$(sed -n "/${CC_NAME}_${VERSION}/{s/^Package ID: //; s/, Label:.*$//; p;}" log.txt)
    echo PackageID is ${PACKAGE_ID}
    echo "===================== Query installed successful on peer0.dismantlerorgd2 on channel: ${CHANNEL_NAME} ===================== "
}

approveForMyOrg0() {
    setGlobalsForPeer0OEMOrgP1
    peer lifecycle chaincode approveformyorg -o localhost:7050 \
        --ordererTLSHostnameOverride orderer1.example.com --tls \
        --collections-config $PRIVATE_DATA_CONFIG \
        --cafile $ORDERER_CA --channelID $CHANNEL_NAME --name ${CC_NAME} --version ${VERSION} \
        --package-id ${PACKAGE_ID} \
        --sequence ${VERSION}
    echo "===================== chaincode approved from oemorgp1 channel: ${CHANNEL_NAME} ===================== "
}

checkCommitReadiness() {
    setGlobalsForPeer0OEMOrgP1
    peer lifecycle chaincode checkcommitreadiness \
        --collections-config $PRIVATE_DATA_CONFIG \
        --channelID $CHANNEL_NAME --name ${CC_NAME} --version ${VERSION} \
        --sequence ${VERSION} --output json 
    echo "===================== checking commit Readiness from OEMOrgP1 ===================== "
}

approveForMyOrg1() {
    setGlobalsForPeer0SupplierOrgS1
    peer lifecycle chaincode approveformyorg -o localhost:7050 \
        --ordererTLSHostnameOverride orderer1.example.com --tls $CORE_PEER_TLS_ENABLED \
        --cafile $ORDERER_CA --channelID $CHANNEL_NAME --name ${CC_NAME} \
        --collections-config $PRIVATE_DATA_CONFIG \
        --version ${VERSION}  --package-id ${PACKAGE_ID} \
        --sequence ${VERSION}

    echo "===================== chaincode approved from SupplierOrgS1 on channel: ${CHANNEL_NAME} ===================== "
}

approveForMyOrg2() {
    setGlobalsForPeer0SupplierOrgS2
    peer lifecycle chaincode approveformyorg -o localhost:7050 \
        --ordererTLSHostnameOverride orderer1.example.com --tls $CORE_PEER_TLS_ENABLED \
        --cafile $ORDERER_CA --channelID $CHANNEL_NAME --name ${CC_NAME} \
        --collections-config $PRIVATE_DATA_CONFIG \
        --version ${VERSION}  --package-id ${PACKAGE_ID} \
        --sequence ${VERSION}

    echo "===================== chaincode approved from SupplierOrgS2 on channel: ${CHANNEL_NAME} ===================== "
}

approveForMyOrg3() {
    setGlobalsForPeer0SupplierOrgS3
    peer lifecycle chaincode approveformyorg -o localhost:7050 \
        --ordererTLSHostnameOverride orderer1.example.com --tls $CORE_PEER_TLS_ENABLED \
        --cafile $ORDERER_CA --channelID $CHANNEL_NAME --name ${CC_NAME} \
        --collections-config $PRIVATE_DATA_CONFIG \
        --version ${VERSION}  --package-id ${PACKAGE_ID} \
        --sequence ${VERSION}

    echo "===================== chaincode approved from SupplierOrgS3 on channel: ${CHANNEL_NAME} ===================== "
}

approveForMyOrg4() {
    setGlobalsForPeer0SupplierOrgS4
    peer lifecycle chaincode approveformyorg -o localhost:7050 \
        --ordererTLSHostnameOverride orderer1.example.com --tls $CORE_PEER_TLS_ENABLED \
        --cafile $ORDERER_CA --channelID $CHANNEL_NAME --name ${CC_NAME} \
        --collections-config $PRIVATE_DATA_CONFIG \
        --version ${VERSION}  --package-id ${PACKAGE_ID} \
        --sequence ${VERSION}

    echo "===================== chaincode approved from SupplierOrgS4 on channel: ${CHANNEL_NAME} ===================== "
}

approveForMyOrg5() {
    setGlobalsForPeer0SupplierOrgS5
    peer lifecycle chaincode approveformyorg -o localhost:7050 \
        --ordererTLSHostnameOverride orderer1.example.com --tls $CORE_PEER_TLS_ENABLED \
        --cafile $ORDERER_CA --channelID $CHANNEL_NAME --name ${CC_NAME} \
        --collections-config $PRIVATE_DATA_CONFIG \
        --version ${VERSION}  --package-id ${PACKAGE_ID} \
        --sequence ${VERSION}

    echo "===================== chaincode approved from SupplierOrgS5 on channel: ${CHANNEL_NAME} ===================== "
}

approveForMyOrg6() {
    setGlobalsForPeer0SupplierOrgS6
    peer lifecycle chaincode approveformyorg -o localhost:7050 \
        --ordererTLSHostnameOverride orderer1.example.com --tls $CORE_PEER_TLS_ENABLED \
        --cafile $ORDERER_CA --channelID $CHANNEL_NAME --name ${CC_NAME} \
        --collections-config $PRIVATE_DATA_CONFIG \
        --version ${VERSION}  --package-id ${PACKAGE_ID} \
        --sequence ${VERSION}

    echo "===================== chaincode approved from SupplierOrgS6 on channel: ${CHANNEL_NAME} ===================== "
}

approveForMyOrg7() {
    setGlobalsForPeer0CustomerOrgC1
    peer lifecycle chaincode approveformyorg -o localhost:7050 \
        --ordererTLSHostnameOverride orderer1.example.com --tls $CORE_PEER_TLS_ENABLED \
        --cafile $ORDERER_CA --channelID $CHANNEL_NAME --name ${CC_NAME} \
        --collections-config $PRIVATE_DATA_CONFIG \
        --version ${VERSION} --package-id ${PACKAGE_ID} \
        --sequence ${VERSION}

    echo "===================== chaincode approved from CustomerOrgC1 on channel: ${CHANNEL_NAME} ===================== "
}

approveForMyOrg8() {
    setGlobalsForPeer0CustomerOrgC2
    peer lifecycle chaincode approveformyorg -o localhost:7050 \
        --ordererTLSHostnameOverride orderer1.example.com --tls $CORE_PEER_TLS_ENABLED \
        --cafile $ORDERER_CA --channelID $CHANNEL_NAME --name ${CC_NAME} \
        --collections-config $PRIVATE_DATA_CONFIG \
        --version ${VERSION} --package-id ${PACKAGE_ID} \
        --sequence ${VERSION}

    echo "===================== chaincode approved from CustomerOrgC2 on channel: ${CHANNEL_NAME} ===================== "
}

approveForMyOrg9() {
    setGlobalsForPeer0DismantlerOrgD1
    peer lifecycle chaincode approveformyorg -o localhost:7050 \
        --ordererTLSHostnameOverride orderer1.example.com --tls $CORE_PEER_TLS_ENABLED \
        --cafile $ORDERER_CA --channelID $CHANNEL_NAME --name ${CC_NAME} \
        --collections-config $PRIVATE_DATA_CONFIG \
        --version ${VERSION} --package-id ${PACKAGE_ID} \
        --sequence ${VERSION}

    echo "===================== chaincode approved from DismantlerOrgD1 on channel: ${CHANNEL_NAME} ===================== "
}

approveForMyOrg10() {
    setGlobalsForPeer0DismantlerOrgD2
    peer lifecycle chaincode approveformyorg -o localhost:7050 \
        --ordererTLSHostnameOverride orderer1.example.com --tls $CORE_PEER_TLS_ENABLED \
        --cafile $ORDERER_CA --channelID $CHANNEL_NAME --name ${CC_NAME} \
        --collections-config $PRIVATE_DATA_CONFIG \
        --version ${VERSION} --package-id ${PACKAGE_ID} \
        --sequence ${VERSION}

    echo "===================== chaincode approved from DismantlerOrgD2 on channel: ${CHANNEL_NAME} ===================== "
}

checkCommitReadiness() {
    setGlobalsForPeer0OEMOrgP1
    peer lifecycle chaincode checkcommitreadiness --channelID $CHANNEL_NAME \
        --peerAddresses localhost:7051 --tlsRootCertFiles $PEER0_ORG0_CA \
        --collections-config $PRIVATE_DATA_CONFIG \
        --name ${CC_NAME} --version ${VERSION} --sequence ${VERSION} --output json 
    echo "===================== checking commit Readiness from all orgs on channel: ${CHANNEL_NAME} ===================== "
}

commitChaincodeDefinition() {
    setGlobalsForPeer0OEMOrgP1
    peer lifecycle chaincode commit -o localhost:7050 --ordererTLSHostnameOverride orderer1.example.com \
        --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA \
        --channelID $CHANNEL_NAME --name ${CC_NAME} \
        --collections-config $PRIVATE_DATA_CONFIG \
        --peerAddresses localhost:7051 --tlsRootCertFiles $PEER0_ORG0_CA \
        --peerAddresses localhost:9051 --tlsRootCertFiles $PEER0_ORG1_CA \
        --peerAddresses localhost:11051 --tlsRootCertFiles $PEER0_ORG2_CA \
        --peerAddresses localhost:13051 --tlsRootCertFiles $PEER0_ORG3_CA \
        --peerAddresses localhost:15051 --tlsRootCertFiles $PEER0_ORG4_CA \
        --peerAddresses localhost:17051 --tlsRootCertFiles $PEER0_ORG5_CA \
        --peerAddresses localhost:19051 --tlsRootCertFiles $PEER0_ORG6_CA \
        --peerAddresses localhost:21051 --tlsRootCertFiles $PEER0_ORG7_CA \
        --peerAddresses localhost:23051 --tlsRootCertFiles $PEER0_ORG8_CA \
        --peerAddresses localhost:25051 --tlsRootCertFiles $PEER0_ORG9_CA \
        --peerAddresses localhost:27051 --tlsRootCertFiles $PEER0_ORG10_CA \
        --version ${VERSION} --sequence ${VERSION} 
}

queryCommitted0() {
    setGlobalsForPeer0OEMOrgP1
    peer lifecycle chaincode querycommitted --channelID $CHANNEL_NAME --name ${CC_NAME}
}

queryCommitted1() {
    setGlobalsForPeer0SupplierOrgS1
    peer lifecycle chaincode querycommitted --channelID $CHANNEL_NAME --name ${CC_NAME}
}

queryCommitted2() {
    setGlobalsForPeer0SupplierOrgS2
    peer lifecycle chaincode querycommitted --channelID $CHANNEL_NAME --name ${CC_NAME}
}

queryCommitted3() {
    setGlobalsForPeer0SupplierOrgS3
    peer lifecycle chaincode querycommitted --channelID $CHANNEL_NAME --name ${CC_NAME}
}

queryCommitted4() {
    setGlobalsForPeer0SupplierOrgS4
    peer lifecycle chaincode querycommitted --channelID $CHANNEL_NAME --name ${CC_NAME}
}
queryCommitted5() {
    setGlobalsForPeer0SupplierOrgS5
    peer lifecycle chaincode querycommitted --channelID $CHANNEL_NAME --name ${CC_NAME}
}

queryCommitted6() {
    setGlobalsForPeer0SupplierOrgS6
    peer lifecycle chaincode querycommitted --channelID $CHANNEL_NAME --name ${CC_NAME}
}

queryCommitted7() {
    setGlobalsForPeer0CustomerOrgC1
    peer lifecycle chaincode querycommitted --channelID $CHANNEL_NAME --name ${CC_NAME}
}

queryCommitted8() {
    setGlobalsForPeer0CustomerOrgC2
    peer lifecycle chaincode querycommitted --channelID $CHANNEL_NAME --name ${CC_NAME}
}

queryCommitted9() {
    setGlobalsForPeer0DismantlerOrgD1
    peer lifecycle chaincode querycommitted --channelID $CHANNEL_NAME --name ${CC_NAME}
}

queryCommitted10() {
    setGlobalsForPeer0DismantlerOrgD2
    peer lifecycle chaincode querycommitted --channelID $CHANNEL_NAME --name ${CC_NAME}
}

chaincodeInitLedger() {
    setGlobalsForPeer0OEMOrgP1
    peer chaincode invoke -o localhost:7050 \
        --ordererTLSHostnameOverride orderer1.example.com \
        --tls $CORE_PEER_TLS_ENABLED \
        --cafile $ORDERER_CA \
        -C $CHANNEL_NAME -n ${CC_NAME} \
        --peerAddresses localhost:7051 --tlsRootCertFiles $PEER0_ORG0_CA \
        --peerAddresses localhost:9051 --tlsRootCertFiles $PEER0_ORG1_CA \
        --peerAddresses localhost:11051 --tlsRootCertFiles $PEER0_ORG2_CA \
        --peerAddresses localhost:13051 --tlsRootCertFiles $PEER0_ORG3_CA \
        --peerAddresses localhost:15051 --tlsRootCertFiles $PEER0_ORG4_CA \
        --peerAddresses localhost:17051 --tlsRootCertFiles $PEER0_ORG5_CA \
        --peerAddresses localhost:19051 --tlsRootCertFiles $PEER0_ORG6_CA \
        --peerAddresses localhost:21051 --tlsRootCertFiles $PEER0_ORG7_CA \
        --peerAddresses localhost:23051 --tlsRootCertFiles $PEER0_ORG8_CA \
        --peerAddresses localhost:25051 --tlsRootCertFiles $PEER0_ORG9_CA \
        --peerAddresses localhost:27051 --tlsRootCertFiles $PEER0_ORG10_CA \
        -c '{"function": "initLedger","Args":[]}'
}

packageChaincode
installChaincode
queryInstalled0
queryInstalled1
queryInstalled2
queryInstalled3
queryInstalled4
queryInstalled5
queryInstalled6
queryInstalled7
queryInstalled8
queryInstalled9
queryInstalled10
approveForMyOrg0
checkCommitReadiness
approveForMyOrg1
approveForMyOrg2
approveForMyOrg3
approveForMyOrg4
approveForMyOrg5
approveForMyOrg6
approveForMyOrg7
approveForMyOrg8
approveForMyOrg9
approveForMyOrg10
checkCommitReadiness
commitChaincodeDefinition
queryCommitted0
queryCommitted1
queryCommitted2
queryCommitted3
queryCommitted4
queryCommitted5
queryCommitted6
queryCommitted7
queryCommitted8
queryCommitted9
queryCommitted10
sleep 1
chaincodeInitLedger
