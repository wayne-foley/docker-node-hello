FROM node:0.10.33

ADD . /src

ENV BUILD_HTTPS_PROXY='something'
ENV BUILD_HTTP_PROXY='something'

ENV HTTP_PROXY=$BUILD_HTTP_PROXY
ENV HTTPS_PROXY=$BUILD_HTTPS_PROXY

# Install app dependencies
RUN cd /src; npm install

EXPOSE  8080
CMD ["node", "/src/index.js"]
