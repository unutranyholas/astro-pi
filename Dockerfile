FROM node:lts
WORKDIR /app
COPY package.json package.json
COPY package-lock.json package-lock.json
RUN npm install --omit=dev
COPY . .
RUN npm install prisma -g
RUN prisma generate
RUN npm run build
CMD node /app/dist/server/entry.mjs
EXPOSE 3000