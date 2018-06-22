# Este archivo define que cosas estarán disponibles en el entorno dentro del contenedor
# Si quieres usar puertos en tu máquina host, aqui se pueden especificar
# También se deben especificar que archivos se necesitarán dentro del container

# especifica la imagen base que va a tener el contenedor
FROM node:latest

# especifica el working directory por defecto
WORKDIR /app

# Copia los archivos de la carpeta actual del host a la carpeta /app del contenedor
ADD . /app

# Instala las dependencias necesarias para el app
RUN npm install

# Hacer que el puerto 3000 del contenedor esté disponible a aplicaciones fuera de este contenedor
EXPOSE 3000

# Definir variables de entorno dentro del contenedor
ENV NAME World

# Correr la aplicación cuando el contenedor empieza a correr
CMD ["node", "server.js"]
