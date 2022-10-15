### Clase 3 de 08 de octubre de 2022

# Docker Compose 
## Definición 
- archivo para definir y ejecutar aplicaciones complejas con docker 
- 1 archivo para multi-contenedores (independientes; se llaman services/ servicios); con single command para organizarlos
- nombre del archivo: docker-compose.yml

## Estructura del Archvio
version: '3.0'
services:
    "nombre del servicio":
        comandos
    "nombre del servicio":
        comandos

## Perfiles
- para ajustar: elegir las aplicaciones en que fase del ciclo del desarrollo se deben ejecutar
- funcionan como if's in Python
- perfiles: development, production, ..

## Recursos
- se puede definir el tomanio del CPU y el  almacenamiento
- con Limits (el maximo que vas a consumir)
- con reservations (el minimo que vas a consumir)

## Comandos
- para crear archivo de compose: docker-compose up -d (-d para seguir ejecutandolo pero poder escribir en el terminal)
- para listrar los compose: docker ps (listar los contenedores ejecutando) o docker-compose ps (listrar los servicios del compose)
- para listrar sus logs: docker-compose logs

# Docker Swarm
- una herramienta software que permite ejecutar los contenedores en una granja de nodos, esto implica uno o varios balanceadores de carga implementados en uno o varios nodos maestros y los nodos que prestan el servicio, implementados en nodos trabajadores.
- con 1 swarm manager con muchos nodos trabajdores (que prestan el servicio; task y container)

# Kubernetes 
- plataforma portable y extensible de código abierto para administrar cargas de trabajo y servicios (fundado por google como open-source)
- facilita la automatización y la configuración declarativa
- 1 Kubernetes Master con muchos nodos trabajdores (que prestan el servicio; task y container)
- ventajes: hybridización y multi-cloud

# Tech. Summary
lo hemos saltado