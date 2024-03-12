rm -r ./WebTop
cp -r ../../../listener-plugin ./listener-plugin
cp -r ../../../replay-tool ./replay-tool
docker build .
docker compose up -d
wget wget https://addons.mozilla.org/firefox/downloads/file/4235927/single_file-1.22.42.xpi
wget wget https://addons.mozilla.org/firefox/downloads/file/3790346/foxfilter-9.6.xpi
sleep 10
cp ./single_file-1.22.42.xpi ./WebTop/Desktop/single_file.xpi & echo "Installing SingleFile installer"
cp ./foxfilter-9.6.xpi ./WebTop/Desktop/foxfilter.xpi & echo "Installing SingleFile installer"
cp ./port.txt ./WebTop/port.txt & echo "Copying port.txt"
cp ./listener-plugin/record.sh ./WebTop/Desktop/3record.sh & echo "Installing recorder"
cp ./replay-tool/replay.sh ./WebTop/Desktop/4replay.sh & echo "Installing replay tool"
cp ./replay-tool/validate.sh ./WebTop/Desktop/5validate.sh & echo "Installing validation tool"
mv ./WebTop/Desktop/3record.sh ./WebTop/Desktop/3_record.sh & echo "Moving recorder"
mv ./WebTop/Desktop/4replay.sh ./WebTop/Desktop/4_replay.sh & echo "Moving replay"
mv ./WebTop/Desktop/5validate.sh ./WebTop/Desktop/5_validate.sh & echo "Moving validate"
echo "Done copying files"