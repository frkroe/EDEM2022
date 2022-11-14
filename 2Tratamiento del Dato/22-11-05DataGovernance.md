### Clase de 05/11/2022
# Gobierno del Dato

## 1. Qué ha pasado aquí?
- hay mucho más tecnologías (avanzadas)
- con las que generamos datos 
- con mucha más velocidad (solo los rapidos sobreviven)

- ciclo de vida de datos: captura, almacenamiento, uso, gestión, protección, borrado

## 2. Gobierno del qué?
definición:
- coordinacion formal de personas, procesos y tecnologia que permite ua una org utiluzar los datos como un actibo al que sace valor

marcos de referencia:
- DAMA
- DCAM

modelos (depende de la madurez de la org, capacidades, cultura, iniciativas, proceso de toma de decisiones): 
- decentralizado
- federal descentralizado
- federal centralizado
- centralizado 

objetivos:
- reducir costes y riesgos
- estandardizar y generar calidad
- apoyar la seguridad
- democratizar el dato

Cosas que no que hay hacer/ motivos por los que fallan:
- iniciativa puramente técnica
- gobierno del datos solo se entiende como proyeto
- estrategia de datos y de gobierno no esta alineados con la corporativa de la org
- no conocimiento previo de datos dentro de la org
- se trata de abordar todo a la vez en vez de hacerlo incremental (pierdes energía)
- no involucrar a todos los stakeholders

## 3. Estupendo, como empiezo?
estrategia de gobierno del dato: 
- paso 1: entender la situación (generar un AS-IS)
- paso 2: marcar unos objetivos (establecer un TO BE)
- paso 3: definir un camino (con quick wins y casos de uso)
- paso 4: involucra a las personas y gestiona el cambio

marcos de trabajo (con gestiones del cambio/ adaptarse o morir):
- estructura de gobierno (parte politica, más estrategica)
    - definir la estrategia de datos, el tipo de gobierno, las políticas a cumplir y los roles y responsabilidades, crear metricas
- arquitechtura IT
    - funcional vs técnica
- arquitectura del dato
    - definir casi todo lo qie tiene que ver con datos con el objetivo de mejorar los productos/servicios
- calidad del dato
- gestión del dato maestro
    - = datos criticos de un negocio en 4 grupos: personas, cosas, lugares, conceptos
    - metadatos: "más allá de datos", super-estructurados que describen características como el contenido, info, calidad, seguiridad
    - datos de referencia: definen el conjunto de valores permitidos para su uso por otros campos de datos 
- seguridad y cumplimiento
    - ciclo de vida de seguiridad, controles, normativas y regulaciones
- ética del dato
    - análisis y auditoría

claves:
- aportar valor rapidamente
- crecer de manera iterativa
- gestion del cambio
- billets (medir el valor)

## 4. somos buenos
*"lo que no se define no se puede medir. lo que no se mide, no se puede mejorar. lo que no se mejora, se degrada siempre"*

billets:
- no todos los datos tienen el mismo valor
- los más valiosos son cuyos que ayudan a los objetivos estrategicos
- el gobierno adecuado de los usos y la reutilizidad tienen un retorno directo

## 5. Datalievers


# Calidad de datos
--> depende del uso y de la persona (es subjetiva)

- objetivo: garantizar el nivel valido
- beneficios: seguridad, confianza, ahorra, valor

Dimensiones:
- Exactitud (Accuracy): Se mide el grado en el que los datos representan correctamente el objeto del mundo real o un evento que se describe.
- Completitud (Completeness): El grado en el que el dato tiene el valor esperado y cumple con los requerimientos marcados. Si un dato es opcional no debe considerarse para lograr el 100% de completitud.
- Consistencia (Consistency): Mide si los datos están libres de contradicción y tienen coherencia lógica, de formato o temporal.
- Pertinencia temporal (Timeliness): Mide el grado en que los datos están disponibles cuando se requieren.
- Unicidad (Uniqueness): Cada dato es único. Con esta dimensión se busca corregir la duplicidad inesperada en nuestros dataset.
- Validez (Validity): Medir si un valor se ajusta a una regla de negocio o a un estándar preestablecido en cuanto a formato, tipo de dato, valores posibles o rangos especificados.

Modelo de mejora continua:
- definir objetivos de negocio
- evaluar el estado de los datos exsitenes
- analysar los resultados
- desarrollar planes de mejora
- implementar soluciones
- ?

regla de 1-10-100:
1 prevencion, 10 incspeccion, 100 coste de impacto
--> hay que identficar errorer cuanto antes

principlaes procesos de calidad del dato:
- perfilado del dato (caracteristicas estadisticas)
- limpieza del dato (detección y clarificación/ corrección de errores)
- validación del dato (tecnicas y de negocio)
- homogeneizción del dato (estandard, formatos)
- enriquecimiento (mejor datos que ya tenemos o complementarlos)