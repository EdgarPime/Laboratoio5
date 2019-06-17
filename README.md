# Laboratoio5
Dockerizar aplicación del Laboratorio 4, incluyendo el servicio web (aplicación) y base de datos.

1. Instrucciones para construir imagen.

Creamos un docker file dentro de la caperte de la aplicacion

![image](https://user-images.githubusercontent.com/37817818/59577786-489e6880-9082-11e9-80a9-471db0aed77d.png)

Luego creamos un archivo .dockerignore todo estos archivos en la carpeta de la aplicacion.

![image](https://user-images.githubusercontent.com/37817818/59577821-84d1c900-9082-11e9-9ec5-dfa569f9b43b.png)


Generamos la imagen

$ docker build -t <your username>/node-web-app .
  
Creamos el contenedor 

$ docker run -p 49160:8080 -d <your username>/node-web-app
  
 ![image](https://user-images.githubusercontent.com/37817818/59577830-8dc29a80-9082-11e9-87be-a1c9e05c9258.png)
 
  
2. Instrucciones para usar imagen.

Primero creamos una repositorio en docker donde tendremos almacenada la aplicacion.

![image](https://user-images.githubusercontent.com/37817818/59577846-9adf8980-9082-11e9-82a7-971e778cad9d.png)

Subimos la aplicacion a la pagina de docker utilizando el comando:

$ docker push pime/lab5virtualizacion

Y hacemos lo mismo para subir la base de datos pero se hace el push en el otro repositorio.

![image](https://user-images.githubusercontent.com/37817818/59577856-a3d05b00-9082-11e9-8939-2ce7606fbf76.png)
 
Luego de ello creamos el archivo docker-compose y agregamos el siguiente codigo para obtener las imagenes de los contenedores creados.

![image](https://user-images.githubusercontent.com/37817818/59580016-bc457300-908c-11e9-96dd-157604960109.png)

Despues de descargar las imagenes ejecutamos el archivo con el comand:
$ docker-compose up
Para ejecutar la aplicacion

![image](https://user-images.githubusercontent.com/37817818/59580052-e7c85d80-908c-11e9-82d9-b0e1557acfbf.png)

Podemos observar que se crearon las imagenes y los contenedores.

![image](https://user-images.githubusercontent.com/37817818/59580111-0dedfd80-908d-11e9-9961-648e05f49097.png)

 
Lo siguiente sera agregar la aplicacion a ECS

![image](https://user-images.githubusercontent.com/37817818/59577864-af238680-9082-11e9-99cc-d51ea92eaa34.png)

Luego editamos el container para cargar la imagen de repositorio de docker

![image](https://user-images.githubusercontent.com/37817818/59577867-b9458500-9082-11e9-9b32-3d63010eddd9.png)


Teniendo la aplicacion creada del cluster nos vamos a los task

![image](https://user-images.githubusercontent.com/37817818/59577880-cb272800-9082-11e9-8f54-f99f4485d87d.png)

Copiamos la IP publica que genero en la perstaña de task y cargamos la aplicacion en web.

![image](https://user-images.githubusercontent.com/37817818/59577888-d24e3600-9082-11e9-91e3-3138cbe7b1e3.png)




 
