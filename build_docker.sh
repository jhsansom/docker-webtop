rm -r ./WebTop
cp -r ../../../replaytool ./replaytool
cp -r ../../../listener-plugin ./listener-plugin
sudo docker build .
sudo docker compose up -d
sleep 10
cp ./port.txt ./WebTop/port.txt & echo "Copying port.txt"
cp ./listener-plugin/record.sh ./WebTop/Desktop/recorder.sh & echo "Installing recorder"
mv ./WebTop/Desktop/recorder.sh ./WebTop/Desktop/record.sh & echo "Moving recorder"

echo "Done copying files"