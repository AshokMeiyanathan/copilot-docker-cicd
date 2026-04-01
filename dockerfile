#Dockerise node application
FROM node:18-alpine
#Create app directory
WORKDIR /user/src/app
#Copy app source
COPY index.js ./
#Expose port
EXPOSE 3000
#Start the app
CMD [ "node", "index.js" ]