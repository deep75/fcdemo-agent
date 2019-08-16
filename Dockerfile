FROM node:12-alpine as build

WORKDIR /app
COPY . ./
RUN npm install
RUN npm audit fix --force

FROM node:12-alpine

COPY --from=build /app /
EXPOSE 8000
CMD ["node", "app.js"]

