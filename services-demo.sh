# Iniciar un swarm
# Nodo inicial es el manager
docker swarm init

# docker-compose.yml

# Crear un stack en base al archivo
docker stack deploy -c docker-compose.yml myapp

docker stack ls
docker service ls
docker ps

# Cuando falla un contenedor, hostname cambia
docker stop ###

# Eliminar el stack
docker stack rm myapp
