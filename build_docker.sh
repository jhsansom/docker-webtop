rm -r ./WebTop
cp -r ../chrome-listener ./chrome-listener
cp -r ../replay-tool ./replay-tool
docker build .
docker compose up -d
rm -r ./chrome-listener
rm -r ./replay-tool