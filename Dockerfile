FROM node:12.0-slim
RUN mkdir -p /app
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
CMD npm run setup
CMD npm run cron
CMD npm run web
EXPOSE 3000
