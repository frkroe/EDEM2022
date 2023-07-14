# End-To-End: Procesamiento de Datos del Tráfico

## Objetivo
* Crear un Dashboard de visualización de datos de cámaras de tráfico en tiempo real
* Gestión del proyecto en 4 equipos: ingestión, plataforma, BI, Data Science
    * Ingestión: obtención de datos de cámaras de tráfico - Franzi
    * Plataforma: creación de la arquitectura de datos en GCP - Julio
    * BI: creación de un dashboard de visualización de datos - Miguel
    * Data Science: creación de un modelo de detección de tráfico - Claudia 

## Arquitectura
inserta imagen de la arquitectura aquí


## Ingestión de Datos
### Fuentes de Datos
En este proyecto de end-to-end ingestionamos datos de dos fuentes distintas:
* Datos de tráfico de España a través de URLs de la DGT
* Datos de tráfico de Escocia a través de scraping de la (web del tráfico en Reino Unido)[https://uktraffic.live/]

### Metodología
Primero hemos intentado sacar y guardar las imágenes de las cámaras de tráfico en local. En cuanto nos ha funcionado eso, las hemos subido a un bucket en Google Cloud Platform todavía con un script en Python ejecutado en local. Finalmente, pasamos los scripts a la nube también para estar 100% en cloud.

### Herramientas
* Python
* Google Cloud Platform
    * Google Cloud Storage
    * Google Cloud Functions / Google Compute Engine

