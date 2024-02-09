rm -r ./WebTop
cp -r ../listener-plugin ./listener-plugin
cp -r ../replay-tool ./replay-tool
docker build .
docker compose up -d
rm -r ./listener-plugin
rm -r ./replay-tool