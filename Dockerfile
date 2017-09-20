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


