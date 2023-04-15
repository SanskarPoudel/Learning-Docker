
#At the top of the layer in DockerFile , we mention the base/Parent image(node for us) from which we want to build our image ( we can download base/parent image from docker hub)
#(If we already have it in the Docker Image it will use that image, Otherwise it will pull it from the Docker Hub)

FROM node:16.15.1-alpine 

#installing nodemon globally so that we can use it in our project
RUN npm install -g nodemon

#Mentioning the working directory so that all our stuffs will be installed there instead of the root directory

WORKDIR /app


#Caching the dependencies in the image so that we don't have to install them again and again
#copying the package.json file to the image(so that we can install the dependencies in the image if they are updated)
COPY package.json .

#RUN command is used to execute the command in the image
#We are installing the dependencies in the working directory

RUN npm install




#Second Layer:- we copy our source code to the image (In ther first dot means that  all the source code are available in the current directory, If the source code is presented in src folder then we say ./src )
#(Second dot represent  directory of image where we want to copy our source code, here dot only represent the root directory of image, we can go to various directory by using /)

COPY . .

#We are exposing the port 4000 to the outside world(as we are listening to port 4000)
EXPOSE 4000

#Using CMD to run the command only when container begins to run (we are starting sthe node server in here) 

CMD ["npm","run","dev"]

# CMD ["node","app.js"]



#To build this image -> we go to the same directory where DockerFile is present and type docker build -t <image name> .





