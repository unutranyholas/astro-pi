FROM node:18-alpine
WORKDIR /app
COPY . .
RUN npm install --omit=dev
RUN npm i -g prisma
RUN prisma generate
RUN npm run build
CMD node /app/dist/server/entry.mjs
EXPOSE 3000