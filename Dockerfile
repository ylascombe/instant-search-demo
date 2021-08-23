FROM node:9.11.2-slim

LABEL maintainer="yohan.lascombe@gmail.com"

COPY . /app

WORKDIR /app
RUN npm install --only=prod

CMD ["npm", "start"]

# TODO determine if multi stage build interesting here ? 
# TODO do not run with root user