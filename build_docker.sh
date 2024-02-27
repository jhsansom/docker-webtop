rm -r ./WebTop
cp -r ../../../listener-plugin ./listener-plugin
cp -r ../../../replay-tool ./replay-tool
docker build .
docker compose up -d
echo "Sleeping 30"
sleep 30
cp ./listener-plugin/record.sh ./WebTop/Desktop/record.sh & echo "Installing recorder"
cp ./replay-tool/replay.sh ./WebTop/Desktop/replay.sh & echo "Installing replay tool"
cp ./replay-tool/validate.sh ./WebTop/Desktop/validate.sh & echo "Installing validation tool"
echo "Done copying files"