FROM node:8

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8000
CMD ["mysql -h localhost -u root -p Edgarpime01"]
CMD ["create database crud_db;"]
CMD ["use crud_db; CREATE TABLE product(product_id INT(11) PRIMARY KEY AUTO_INCREMENT,product_name VARCHAR(200),product_price INT(11))ENGINE=INNODB;"]
CMD ["quit"]
CMD [ "node", "index" ]