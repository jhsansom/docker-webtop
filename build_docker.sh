rm -r ./WebTop
cp -r ../listener-plugin ./listener-plugin
cp -r ../replaytool ./replaytool

sudo docker build . -t webtop