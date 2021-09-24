FROM       node:alpine 

MAINTAINER https://github.com/3artonline/blockchain-demo

EXPOSE     3000

WORKDIR    /blockchain-demo 

COPY       package.json /blockchain-demo

RUN        npm install

COPY       . /blockchain-demo 

CMD        ["node", "bin/www"]
