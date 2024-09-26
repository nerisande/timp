FROM mhart/alpine-node
WORKDIR /app
COPY package*.json ./
RUN nmp install
COPY . .
EXPOSE 3000
CMD ["node", "app.js]
