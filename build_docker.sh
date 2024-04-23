rm -r ./WebTop
cp -r ../../../listener-plugin ./listener-plugin

# Copy obfuscated contents of replay tool
cp -r ../../../replaytool ./replaytool
sudo docker build .
sudo docker compose up -d
wget wget https://addons.mozilla.org/firefox/downloads/file/4235927/single_file-1.22.42.xpi
wget wget https://addons.mozilla.org/firefox/downloads/file/3790346/foxfilter-9.6.xpi
sleep 10
cp ./single_file-1.22.42.xpi ./WebTop/Desktop/single_file.xpi & echo "Installing SingleFile installer"
cp ./foxfilter-9.6.xpi ./WebTop/Desktop/foxfilter.xpi & echo "Installing SingleFile installer"
cp ./port.txt ./WebTop/port.txt & echo "Copying port.txt"
cp ./listener-plugin/record.sh ./WebTop/Desktop/recorder.sh & echo "Installing recorder"
mv ./WebTop/Desktop/recorder.sh ./WebTop/Desktop/record.sh & echo "Moving recorder"

echo "Done copying files"