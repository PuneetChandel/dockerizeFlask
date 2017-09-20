To run :

docker build -t flasktag1.1 .  
docker run --name="flaskapp-Node1" -p 2001:2001 -dti flasktag1.1  

http://0.0.0.0:2001/flaskapp  


container:  

docker ps  
docker stop <id>  
docker start <id>  
docker kill <id>  
docker rm <id>  


image :  
docker images  
docker rmi <id>  

Ref:  
https://docs.docker.com/engine/reference/builder/#usage  
https://docs.docker.com/engine/userguide/eng-image/dockerfile_best-practices/#cmd  
