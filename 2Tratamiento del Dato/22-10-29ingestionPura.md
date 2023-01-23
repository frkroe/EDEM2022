### Clase de 29/10/2022 con Esteban Chiner
# INGESTIÓN PURA

## 1. Introducción
**Ingestión de datos**
- = traer datos del systema del fuente a otro sistema 
- objetivo: automatizarlo para aumentar rapídez

**Approaches**
- ETL: forma tradicional: extraer y transformar datos antes de guardarlos en el sistema (más lento de ELT, pero datos están preparados)
- ELT: sacar y extraer datos al sistema y luego transformarlos (más rapido de ETL, pero datos no están tan preparados)

**Buenas prácticas**
- alertas sobre fallos etc.
- guardarte una copia de los datos 
- automatizar procesos
- idempotencia = siempre hay que sacar los mismos resultados cada vez procesas los datos
- documentar todo
- fijar las expectativas (quién utilizará los datos con qué objetivo)
- reútilizar lo máximo posible (p.ej. usar templates)

**Errores comunes**
- procesar muchos formatos de datos distintos
- entregar/enviar los datos con mécanismos distintos
- frequencia de la entrega de datos varía (de real-time a batch)
- ingestión de datos cambia mucho/ cada rato

**Características necesarias de herrmientas de ingestión de datos**
- facil de conectar a las fuentes y añadirlas
- facil de usar (idealmente que tenga un interfaz gráfico)
- buen catálogo de componentes
- escalable
- monitorización
- trazeabilidad (= para seguir el proceso de evolución de un producto en cada una de sus etapas)

**Tools**
- principales: NiFi, StreamSets, airbyte para la ingestión pura
- otros más especializados: flume para big data, splunk para logs (=registra los eventos en un sistema operativo/ejecución de software, o los mensajes entre diferentes usuarios de software de comunicación), ...

## 2. Apache NiFi
**Introducción**
- = open-source, creado por NSA
- para automatizar data flows entre sistemas de software
- cumple las características necesarias

**Conceptos b¡asicos**
- FlowFile: el dato que está fluyiendo (está transportado)
    - lleva attributos: <valor: ...>
    - lleva contenido: *
- FlowFile Processor: la cosa que hace los procesos con los FlowFiles "blackbox"
- Process Group: conecta los sub-procesos

## 3. Proyectos (Success Stories)

## 4. StreamSets