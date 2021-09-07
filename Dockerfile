FROM node:12.18-alpine
ENV NODE_ENV=production
WORKDIR /usr/src/app
COPY . .
RUN npm install

# RUN npm run build
EXPOSE 80

#CMD ["node", "playground/index.js", "test"]
ENTRYPOINT ["node", "playground/index.js"]
#ENTRYPOINT ["tail", "-f", "/dev/null"]