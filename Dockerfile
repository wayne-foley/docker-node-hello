FROM node:0.10.33

ADD . /src
# Install app dependencies
# RUN cd /src; npm install

EXPOSE  8080
CMD ["node", "/src/index.js"]
