### Clase de 16/12/22 con Nuria Urena
# Flask APIs/ Data as a Service
## 1. consumption
gestionamos, procesamos y isualizamos datos, todo en clound (la nube)

## 2. data as a service
- opción 1: frontend + logic + database como cojunto
    - surgen problemas: si cambian tecnnologias, escalas, trabajo en grupo, quieren usar código repetido o de terceros

- opción 2: frontend, logic, database como 3 partes individuales
    - así se puede modificar cada parte indivualmente sin tocar los demás; es más sencillo de manejar en equipos
    - connecatando las piezas con una API: Application Programming Interface

## Definición API
Una API o interfaz de programación de aplicaciones es un conjunto de definiciones y protocolos que se usa para diseñar e integrar el software de las aplicaciones.

Las API permiten que sus productos y servicios se comuniquen con otros, sin necesidad de saber cómo están implementados. Esto simplifica el desarrollo de las aplicaciones y permite ahorrar tiempo y dinero. Las API le otorgan flexibilidad; simplifican el diseño, la administración y el uso de las aplicaciones; y ofrecen oportunidades de innovación, lo cual es ideal al momento de diseñar herramientas y productos nuevos (o de gestionar los actuales).
## 4. API as client
Ejemplos
- WEB: pokeman
- API Platform: postman
--> ejercicio client

## 5. Api as server
**Flask:**
un framework minimalista escrito en Python que permite crear aplicaciones web rápidamente y con un mínimo número de líneas de código
--> ejercicios 0,1,2

**Swagger:**
 una documentación online que se genera sobre una API. Por lo tanto, en esta herramienta podemos ver todos los endpoint que hemos desarrollado en nuestra API. Además, nos demuestra cómo son los elementos o datos que debemos pasar para hacer que funcione y nos permite probarlos directamente en su interfaz. 

 [crear swagger](https://editor.swagger.io/)

formatos: swagger.yaml o .json
 estructura:
 - version swagger
 - titulo y descripcion
 - url
 - endpoints(paths) de la API

## 6. architecture
**Kubernetes**
Kubernetes es una plataforma portable y extensible de código abierto para administrar cargas de trabajo y servicios. Kubernetes facilita la automatización y la configuración declarativa. Tiene un ecosistema grande y en rápido crecimiento. El soporte, las herramientas y los servicios para Kubernetes están ampliamente disponibles.
~ como plataforma de contenedores