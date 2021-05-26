cd fabric-samples

./stop.sh

cd ..

mkdir temp
cp -r fabric-samples/goods-ledger temp
cp fabric-samples/run.sh temp
cp fabric-samples/stop.sh temp
cp fabric-samples/.gitignore temp
rm -rf fabric-samples/*

cp -r temp/goods-ledger fabric-samples
cp temp/run.sh fabric-samples
cp temp/stop.sh fabric-samples
cp temp/.gitignore fabric-samples
rm -rf temp