### Clase 1 de 06 de octubre de 2022

# VIRTUAL MACHINES
## Origines/ Historia
- antes de virtualización: una aplicación en un servidor con un sistema operativo
- 1990s: el demanda para hardware & recursos aumenta
- 2006: contenedores de procesos
- 2013: dockers

## Definición Virtualización
- proceso de crear una representacion software-based (= virtual) de algo (aplicaciones, servidores, almacenamiento, redes) 
- dividir una máquina grande en muchas pequenias (~ se puede usar diferentes aplicaciones y/o sistemas operativas etc. en diferentes máquinas)
- para reducir recursos de IT y mejorar la eficiencia de las máquinas

## Por qué Virtualizacion?
- problemas con sistemas tradicionales: conflictos con aplicaciones ejecutando a la misma vez, resursos usados ineficientes
- ...

## Tipos de Virtualización
- server  (muchos sistemas operativas en un servidor fisical)
- network (muchas aplicaciones en un red virtual)
- desktop (conectar con otro escritorio que tiene toda la información; p.ej. Citrix)
- storage (perspectiva lógica sobre almacenamiento)


# HYPERVISOR
## Definición
monitor de máquina virtual es una capa de software para realizar una virtualización de hardware que permite utilizar, al mismo tiempo, diferentes sistemas operativos (sin modificar o modificados, en el caso de paravirtualización) en una misma computadora
## Ejemplos
- VMare
- VirtualBox
- Hyper-V


# VIRTUALIZATION IN CLOUD
## in google: Google Compute Engine GCE
- IaaS para acceder a máquinas virtuales on-demand
- launch from standard images or custom images (image = persistent disk that contains the OS and root file that is necessary for starting an instance)
- Configuración de la máquina:
    - ubicación (eso puede ser importante en el caso de la protección de datos p.ej.)
    - tipo
    - tomanio

## in amazon: Amazon Elastic Compute Cloud
misma idea como en google

## in azure: Azure Virtual Machines
misma idea como en google


# CI/ CD
## Software Development Life Cicle (con 4 entornos)
1. Development: programar en python en vuestro máquina del equipo local (entorno desarrollo)
2. Integración: companeros suben/comparten scripts y los juntan
3. User Acceptance Testing (UAT): entrar gente para pruebas = verifificar que todo funcione y relamente es lo que queremos (entorno reproducción)
4. Producción: ejecutar programa, entrar usarios (entorno producción)

## CI: Continous Integration
= es una práctica de ingeniería de software que consiste en hacer integraciones automáticas de un proyecto lo más a menudo posible para así poder detectar fallos cuanto antes. Entendemos por integración la compilación y ejecución de pruebas de todo un proyecto.

Despues del desarollo se sube el código en **Source Control Server** (i.e. GitHub)
![CI](https://pepgotesting.com/wp-content/uploads/2015/02/CI.png)


# DevOps
## Definición
metología para mejorar comunicación, colaboración, integración y automatición entre desorrolladores y otros profesionales de IT

## Infrastructure as Code (IaC) 
proceso de gestión y aprovisionamiento de centros de datos informáticos a través de archivos de definición legibles por máquina, en lugar de configuración de hardware físico o herramientas de configuración interactiva

scripts para mantener configuraciones y automatizar provisiones de infrastructura 

## Ejemplos
- Automation: Jenkins, ...
- Configuration Management: Chef, ...
- Compute Virtualisation: vmware, ...
- Data Virtualization: delphix, ...


## DEBERES:
ejecutar ese con docker abierto!:

todo a la misma vez:
```
docker pull ubuntu:20.04 && docker pull ubuntu:18.04 && docker pull ubuntu && docker pull nginx && docker pull fedora && docker pull httpd && docker pull python && docker pull tomcat &&  docker pull mariadb:10.6.4-focal && docker pull wordpress
```

o indivdualmente:
```
docker pull ubuntu 
docker pull ubuntu:20.04
docker pull ubuntu:18.04
docker pull nginx
docker pull fedora
docker pull httpd
docker pull python
docker pull tomcat
docker pull mariadb:10.6.4-focal
docker pull wordpress
```

