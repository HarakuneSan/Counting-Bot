FROM node:20.5.1

# Copy package.json and package-lock.json
COPY package*.json ./

# Install npm production packages 
RUN npm install

COPY . ./app

CMD ["npm", "start"]