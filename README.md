Docker file  
# python version to use, you can specify latest or slim with exact version  
FROM python:3.6-slim  

# Directory where the CMD command needs to be executed  
WORKDIR /flaskcode  

# copy requirement file to container's filesystem  
ADD requirements.txt /flaskcode/  

# install dependencies  
RUN pip install -r requirements.txt  

# copy files to container filesystem  
COPY . /flaskcode/  

# Associate a specified port to enable networking between the running process inside the container and the outside world  
# ports on which a container will listen for connections  
EXPOSE 2001  

# command to run upon container creation  
CMD ["python", "app.py"]  


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
