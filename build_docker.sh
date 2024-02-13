rm -r ./WebTop
cp -r ../../../listener-plugin ./listener-plugin
cp -r ../../../replay-tool ./replay-tool
docker build .
docker compose up -d
sleep 5
cp ./listener-plugin/record.sh ./WebTop/Desktop/record.sh
cp ./replay-tool/replay.sh ./WebTop/Desktop/replay.sh
rm -r ./listener-plugin
rm -r ./replay-tool