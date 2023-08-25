# Build stage
FROM node:20 AS build

WORKDIR /app

COPY package*.json ./

RUN npm install && \
    npm cache clean --force


COPY . .

# Final runtime stage
FROM node:20-slim

WORKDIR /app

COPY --from=build /app .

ENV TOKEN=your_token
ENV CLIENT_ID=_your_client_id
ENV PREFIX=your_prefix

CMD ["npm", "start"]