### Clase del 27/01 con Javi
# Cloud: Dataflow 1; herramientas serverless

## caso de uso: start-up real-time architecture
objetivo de analizar y simular transacciones en la web (e-commerce)
(datos: número de cuenta bancaria, nombre, email etc.)
buisness challenge:
- con 5 productos vendiendo por la web - cuál es lo mejor vendido
- cúales de las transacciones son fraudelentes
- visualizar los datos

## por donde empezar
1. app; generador de datos (on premise: api, python etc, o en cloud: p.ej. IoT core)
2. ingestión de datos (on premise: kafka, o en cloud: pubsub)
3. procesamiento de datos (on premise: spark, o en cloud: Dataflow)
4. almacenamiento de datos (on premise: postgre, o en cloud: Biq Query)
5. vizualisación de datos (looker studio)

primero hay que pensar en cloud o en premise
ventajas de cloud:
- la pasta
- la escabilidad
- la flexibilidad

## concepto de serverless
ventajas:
- no te importa donde esta ejecuntando, solo importa tu código/ tus funciones
- arcitectura todo adminstrado por google
- es auto-escalable (va por arriba), elastica (que se adapta)
- pay-as-you-go
- a nicel de negocio: bajando el time-to-market (de un MVP al producto en el mercado)

desventajas:
- bajo control
- muy dificil testearlo y analizar de los fallos

arquitectura workflow tradicional: proviosonar las recursos, implenetation de features, costes
arquitectura workflow serverless: elige lenguaje de programacion, crear función y  su frecuencia (con triggers), recursos administradas por google y con módelo de pago pay-as-you-go

casos de uso de serverless:
- CI/CD: integración continua y entrega continua (cloud build en google)
- event-driven & CRON: planificador de trabajos basado en el tiempo en sistemas operativos de tipo Unix (substituto de dataflow)
- procesacimiento de daots y IoT
- Machine Learning
- crear RESTful APIs

## Servicios de Google
- pupsub para capturar
- dataflow y jobs de spark
- big query para almacenar y analizar
- looker para vizualisar
- y muchos más

[Buenas Explicaciones En Dibujos De Los Servicios Que Hay En GCP](https://thecloudgirl.dev/)

----

# dataflow: serverless data processing
## definiciones y conseptos bascios
= serverless, data processing service for both streaming and batch data

Apache Beam = herramienta para crear data processing pipeline que se peude ejecutar en varios sitios (local/notebook, dataflow, spark, flink)

fuentes y sinks:
- servicios de GCP
- third-parties vendors
- custom


## apache beam programming model
apache beam = batch & streaming

- lenguajes de programacion: python, java, go
- modo: batch or stream processing
- pipeline: apache beam model (elemento principal; sinatxis para procesar datos)
- runners: flink, spark (los 2 local o cloud), direct (local), dataflow (cloud)

conceptos basicos
- PTransforms: las transformaciones de un input a un output 
- PCollection: el resultado de la transformacion (cual es immutable)
- DoFn: te da muchas funciones prestabilizidas; controla como los bundles de datos sean procesados
- Input/Output transformaciones
- ParDo: procesimiento parallelo para filtrar a dataset, ...
- Group by key y CoGroupByKey (combinando varios group by keys)
- CombineGlobally (combinar todo lo que va delante en el window)
- Flatten: juntar diferentes colleciones a una
- Partition: lo contrario de flatten

```
# crear pipeline (PCollections)
    #First of all, we set the pipeline options
options = PipelineOptions(save_main_session=True, streaming=True)
beam.Pipeline(options=options)

# PTransform
 (p | "Read messages from PubSub" >> #TOCOMPLETE
    #Parse JSON messages with Map Function and adding Processing timestamp
    | "Parse JSON messages" >> #TOCOMPLETE
        )

# DoFn
beam.ParDo(DoFn)
```


si es streaming se puede usar group by key solo si usamos: windows

## advanced
- windows (a PCollection subdivido en partes por un tiempo fijo, p.ej. cada minuto)
    - ventanas fijas
    - ventanas sliding, que solapan
    - ventanas session: cada ventana con un tiempo distinto
- watermarks (estimación de cuándo se espera que hayan llegado todos los datos de una ventana determinada. Esto es necesario porque no siempre se garantiza que los datos lleguen a un canal en orden cronológico o a intervalos predecibles)
- triggers (determina cuándo agregar los resultados de cada ventana., p.ej. lanza despues de una ventana o despues que hayan 10 elementos en la ventana )
    - event-time: lanza en un momento concreto
    - processing time: lanza durante el procesamiento
    - data-driven: p.ej. cuando lleguen 3 elementos lo lanzas
    - composite: los 3
- event-time vs processing-time

## como se usa dataflow? (extra)
- con dataflow templates
- con dataflow SQL
- con dataflow Notebooks

