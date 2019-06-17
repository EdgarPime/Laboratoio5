# Laboratoio5
Dockerizar aplicación del Laboratorio 4, incluyendo el servicio web (aplicación) y base de datos.

1. Instrucciones para construir imagen.

Creamos un docker file 

FROM node:8


WORKDIR /usr/src/app


COPY package*.json ./

RUN npm install



COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]


Luego creamos un archivo .dockerignore todo estos archivos en la carpeta de la aplicacion.

node_modules
npm-debug.log


Generamos la imagen

$ docker build -t <your username>/node-web-app .
  
Creamos el contenedor 

$ docker run -p 49160:8080 -d <your username>/node-web-app
  
  
  
2. Instrucciones para usar imagen.

Primero creamos una repositorio en docker donde tendremos almacenada la aplicacion.

Subimos la aplicacion a la pagina de docker

$ docker push pime/lab5virtualizacion
  
Configurando la definición del contenedor para la base de datos MySQL
