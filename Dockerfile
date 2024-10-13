FROM node:14

WORKDIR /test

COPY main.js .
COPY test.sh .

CMD ["node", "/test/main.js"]