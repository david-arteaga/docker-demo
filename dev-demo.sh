docker run hello-world

# node app --> server.js

# Dockerfile

# Construir una imagen
docker build -t node-app .

# Correr la imagen en un contenedor
docker run -p 4000:3000 node-app
