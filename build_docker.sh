rm -r ./WebTop
cp -r ../chrome-listener ./chrome-listener
docker build .
docker compose up -d
rm -r ./chrome-listener