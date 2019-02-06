FROM node:8

# Create app directory
WORKDIR /usr/src/app

# Bundle app source
COPY frontend/ .

# Run for production
RUN npm install --only=production

EXPOSE 3000

CMD [ "npm", "start" ]
