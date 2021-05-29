FROM node:lts-alpine
WORKDIR /usr/src/fosscord-api
COPY package.json .
RUN npm install
RUN npx patch-package
COPY . .
EXPOSE 3001
RUN npm run build
CMD ["npm", "start"]