FROM node:18-alpine
WORKDIR /app
COPY . .
RUN npm install --production
CMD npm run build && node /app/dist/server/entry.mjs
EXPOSE 80