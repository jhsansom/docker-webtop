rm -r ./WebTop
cp -r ../listener-plugin ./listener-plugin
cp -r ../replay-tool ./replay-tool
docker build .
docker compose up -d
rm -r ./listener-plugin
sleep 5
cp ./replay-tool/run.sh ./WebTop/Desktop/run.sh
rm -r ./replay-tool