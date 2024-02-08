docker stop webtop
sleep 5
docker image rm -f this/test:v3
docker rmi -f $(docker images -f "dangling=true" -q)