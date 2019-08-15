FROM node:12-alpine as build

WORKDIR /app
COPY . ./
RUN npm install

FROM node:12-alpine

COPY --from=build /app /
EXPOSE 8000
CMD ["node", "app.js"]

