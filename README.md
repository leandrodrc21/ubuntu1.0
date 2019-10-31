# ubuntu1.0

docker rm $(docker ps -qa)
docker ps -aq -f status=exited | xargs -r docker rm 
docker system df
docker system prune 
docker system prune -a
