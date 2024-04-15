
FROM node:16-alpine
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

FROM nginx:alpine

COPY --from=0 /usr/src/app/build /usr/share/nginx/html

<<<<<<< HEAD
EXPOSE 5001
CMD ["nginx", "-g", "daemon off;"]
 
 #To Run the commands 
 # Build the Docker image
#docker build -t my-node-nginx-app .

# Run a container with port mapping
#docker run -p 5000:80 my-node-nginx-app
=======
EXPOSE 5000
CMD ["nginx", "-g", "daemon off;"]

# First Clone The Git Hub repository
# Then On Doker on Backgroun

# Run This Command On Terminal

# Build the Docker image
# docker build -t my-node-nginx-app .

# Run a container with port mapping
# docker run -p 5000:80 my-node-nginx-app

# Goto Any Web Browser & Paste This Link
# http://localhost:5000
>>>>>>> 8f2f5d57a0dbe1b74e1df078635a253b7ef27e77
