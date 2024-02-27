rm -r ./WebTop
cp -r ../../../listener-plugin ./listener-plugin
cp -r ../../../replay-tool ./replay-tool
docker build .
docker compose up -d
echo "Sleeping 30"
sleep 30
cp ./listener-plugin/record.sh ./WebTop/Desktop/record2.sh & echo "Installing recorder"
cp ./replay-tool/replay.sh ./WebTop/Desktop/replay2.sh & echo "Installing replay tool"
cp ./replay-tool/validate.sh ./WebTop/Desktop/validate2.sh & echo "Installing validation tool"
mv ./WebTop/Desktop/record2.sh ./WebTop/Desktop/record.sh & echo "Moving recorder"
mv ./WebTop/Desktop/replay2.sh ./WebTop/Desktop/replay.sh & echo "Moving replay"
mv ./WebTop/Desktop/validate2.sh ./WebTop/Desktop/validate.sh & echo "Moving validate"
echo "Done copying files"