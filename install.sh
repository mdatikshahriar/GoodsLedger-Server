mkdir .temp
attrib +h .temp
cp -r fabric-samples/goods-ledger .temp
cp fabric-samples/run.sh .temp
cp fabric-samples/stop.sh .temp
cp fabric-samples/.gitignore .temp
rm -rf fabric-samples

curl https://raw.githubusercontent.com/hyperledger/fabric/master/scripts/bootstrap.sh | bash -s

cp -r .temp/goods-ledger fabric-samples
cp .temp/run.sh fabric-samples
cp .temp/stop.sh fabric-samples
cp .temp/.gitignore fabric-samples
rm -rf .temp

cd fabric-samples/goods-ledger

rm -rf chaincode-go/vendor
rm -rf application-javascript/wallet
rm -rf application-javascript/node_modules