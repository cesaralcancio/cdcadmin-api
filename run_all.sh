mvn clean install
docker rm $(docker ps -a -q)
docker rmi -f cdcadmin-api
docker build -t cdcadmin-api .
docker-compose up -d