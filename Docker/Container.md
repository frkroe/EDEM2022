### Clase 2 de 06 - 08 de octubre de 2022

# Contenedores
## Definición Contenedores
- standardized packaging for software and dependencies
- una manera de empaquetar las aplicaciones
- islamiento de las aplicaciones 
- contendores son ligeros (tomanio pequenio) en comparación con la máquina virtual
- comparten el mismo sistema operativo Kernel (hay contendedores linux que funcionen solo en linux y hay contendedores que solo funcionen en windows; no hay contenedores mac)

## VM & Contenedores: Diferencia entre ellos y van juntos
![differenceVM](https://www.netapp.com/media/Screen-Shot-2018-03-20-at-9.24.09-AM_tcm19-56643.png?v=85344)
![VM & contenedores juntos](https://raw.githubusercontent.com/collabnix/dockerlabs/master/beginners/docker/images/vm-docker5.png)
**no son substitutos, a veses nos sirve un contenedor mejor, en otros casos la VM. También pueden ir juntos**

## Ejemplos de contendores
- Docker (más famoso, es el standard)
- otros: podman, Rocket, buildah, cri-o, skopeo, kata


# Docker

## Definiciones
- es open-plattform
- Docker Engine: client-server application con esos componentes: 
    - para Linux
    - Docker Daemon
    - REST API (un servicio para que otros la usen la applicación a través de un prótocolo http)
    - Docker Client
- Docker Desktop: manera más moderna 
    - con docker engine
    - para Linux, windows y mac
    - focus en desarrollo
    - inluye extras, como docker-compose, GUI etc.

## Docker Image
- contiene una OS, base de datos, software (etc.) que no se puede modificar
- ~ read-only template
- con eso se puede hacer un push o pull a Docker Hub (~repositorio público)

# Docker Contenedor
- running instance de un docker image
- lo mismo como VM pero más ligero
- aniade un layer en los del image para poder escribir


## 1 Comandos básicos
docker ps: listrar los contenedores que estan ejecutando ahora mismo
docker ps -l: listrar el último contendor que has ejecutado
docker ps -a: listrar todos los contendores
docker image ls: listrar todos los imagenes que has descargado/ que hay
docker run: iniciar un nuevo contenedor de un imagen
docker start: iniciar un contenedor que estaba parado
docker run -it "ubuntu": -it para vinicularme en el contenedor del imagen "ubuntu" para ejecutarlo

## Ejercicio 1A & 1B
- list docker images: docker image ls
- create new container: 
    - hello world: docker run -it hello-world
    - ubuntu: docker run -it ubuntu (luego hay que poner "exit" para salir del contenedor y seguir con las tareas)
- list docker images: docker image ls
- list running containers: docker ps (-l para ver el último contendor que has ejecutado)
- list all containers: docker ps -a

## 2 Background Containers (no muere hasta que lo queremos)
- para iniciar: docker run -d nginx
- para parar: docker stop "xx" (hay poner las 2 primeras letras del id)
- volver a ejecutar: docker start "xx" (con -i te sale en la comanda; cuidado: hay que salir con control+c)
- eliminar contenedores: docker rm "xx" "yy" (puedes aniadir tantos contenedores que quieres con espacio)
    - para eliminar todos: docker system prune
- eliminar imagenes: docker rmi "xx" (hay que elimanar los contenedores del imagen primero)

## Ejercicio 2
- run nginx container: docker run -d nginx
- how many nginx containers/ images do you have: docker ps -a (tengo 1 imagen y 1 contenedor)
- run a new nginx container: docker run -d nginx
- how many nginx containers/ images do you have: docker ps -a (tengo 1 imagen y 2 contendores)
- stop and start them: docker stop "xx" "yy"; docker start "xx" (solo se puede reiniciar un contenedor al mismo vez)
- how many nginx containers/ images do you have: ...

## 3 running commands in containers
- docker run ubuntu ls -l: iniciar un nuevo contenedor y listar (ls) con más detalles (-l) lo que hay dentro
- docker start -i "xx": reiniciar con el mismo orden/estructura como en run
- docker exec -it "xxxx" bash: para interactuar con contenedor (hacer cositas dentro del contenedor)

## Ejercicio 3A & 3B
- list content in ubuntu using run: docker run ubuntu ls (-l) (in windows listrar todos archivos con dir)
- copy file in container: (tienes que estar en el órigen del archivo para copiar) C:\Users\franz\Documents>docker cp test.txt c951b2525522:/
- list content of ubuntu container using start: (vuelves en el sitio donde estabas antes) docker start -i c951b2525522


- create nginx container: docker run -d nginx
- list content in container using exec: docker exec -it "xxx" ls
- copy a file in container: docker cp test.txt 70f761ccfb42:/
- list content of container using exec: docker exec -it "xxx" ls

## 4 Monitoring
- docker top "XX": listrar los procesos que estan ejecutando dentro del contenedor
- docker logs "xx": listrar los logs de un contenendor
- docker stats "xx": listar el consumo de los recursos de los contenedores que estan ejecutando
- docker inspect "xx": listar toda la informacion de un objeto
- docker system df: imforacion sobre los recursos/ pesos de los imagenes y contenedores que hay en tu maquina

## Ejercicio 5
- run nginx container: docker run -d nginx 
- get info on running processes: docker top "xx"
- get info on memory usage: docker stats "xx"
- open another terminal & enter the container and run "apt-get update": docker exec -it "xx" bash; leugo: apt-get update
- any changes?: ni puta idea, algo aumenta

## Ejercicio 6
- run fedora docker: docker run -it fedora
- run wget google.com --> pone: "not found"
- install wget: dnf install wget
- is wget installed --> sí
- stop & start container (is wget installed --> sí)
- create new container from same image (is wget installed --> no)

## Docker Volumens and Bind Mounts
- en general: si me muere un contenedor, tb pierdo los datos dentro del contenedor
- por eso apareció los volumenes: todo lo que guardes dentro del contenedor, se guarda fuera del contenedor en otro sitio en la máquina host(una carpeta en el servidor donde tienes acceso)
- bind mounts: A bind mount takes an existing directory tree and replicates it under a different point. The directories and files in the bind mount are the same as the original. Any modification on one side is immediately reflected on the other side, since the two views show the same data.

- para crear volumen en nuevo contenedor ubuntu: docker run -it -v data:/data_in ubuntu
    - acceder a data atraves de windows explorador: "\\wsl.localhost\docker-desktop-data\data\docker\volumes"
- para crear bind mount: docker run -it -v /data:/data_in ubuntu

## Docker Image: Como se construye a través de un docker file
docker file --build--> image --run--> container
cada comando es un layer del imagen
comando para crear imagen: docker build . (si quieres poner un nombre: docker build --t "nombre" .)
el id del images se encuentra en las primeras letras detrás de:  "=> => writing image sha256:6d7ab90b8..."

**éstructura de un docker file:**
1. instrucciones fundamentales: FROM, ARG
2. instrucciones de configuraciÓn: RUN, ADD, COPY, ENV
3. instrucciones de ejecución: CMD, ENTRYPOINT (los dos para ejecutar contenedor, diferencia: con ENTRYPOINT no se puede sobreescribir si pones "docker run ls" se ejecuta que has puesto detras de ENTRYPOINT y no ls), EXPOSE (para definir puerto "p.ej. 80" para entrar)
(1. & 2. se ejecuta con BUILD, 3. se ejecuta con RUN)


## Ejemplo docker_2: docker file con httpd
- docker build -t "img name" .
- docker run -p 80:80 "containerid"


## Docker Image TIPS
- descargar imagenes a traves de hub.docker.com (ojo: solo oficiales y verificados)
- unos imagenes no son gratuitas
