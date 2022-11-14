# ORIGEN DEL PROBLEMA
### clase de 20/10/2022 y 21/10/2022
0. introducción
no somos capaz de recibir toda la información --> gran volumen de datos
por lo tanto, las empresas tienen que ser selectivas
antes: las empresas eran muy selectivas (no usaron tantos datos como antes)
ahora: datos ya no son conceptuales sino creados por nuestros clientes; su importancia ha crecido un montón
problema: recibir los datos y como se traduce a algo útil para la empresa

1. crecimiento orgánico
= datos han crecido como una explosión (cada vez hay ás datos/velocidad de manera continúa)--> challenge de los bigdata 
big data = tiene que cumplir una serie de los siguientes **5Vs**: 
- **volumen**: gran volumen aún creciendo de manera continúa; surgen problemas de almacenamiento
- **velocidad**: capacidad de procesar información (~ datos/tiempo) (según ley de Moore)
- **variedad**: lo más importante para definir datos como bigdata (convierta un sistema clásico a lo de bigdata): problemas surgen por multiples fuentes, tipos, formatos (p.ej. encoding necesario, 1.5 vs 1,5 etc.), contextos (info alrededor de datos), interpretaciones, estructuras
- **veracidad**: surgen problemas de actualizaciones: problemas culturales (conflicto entre departamentos, no comparten datos), estructurales (data silos en empresas grandes por falta de comunicación), tecnológicas (sistemas mantienen diferentes versiones; datos no se pueden usar/ mover a otros applicaciones etc.)
- **valor**: datos tienen una función en la empresa: se guardan para un objetivo y necesistas medir lo que quieres realizar y tu punto antes de cambiar (soll/ist Vergleich); se usar para diferentes cosas pero siempre para obtener una ventaja económica y competitiva: optimizar actividades y procesos, tomar decisiones, crear o mejorar productos/ servicios, reforzar el conocimiento y las relaciones con los clientes

También hay que tener en cuenta:
- burocracia (protección de datos, p.ej. GDPR; multi-factor-authentication por PSD2)


**Posibles soluciones para empresas media-grandes**
- denominar los data silos: 
    - soluciones verticales (datos islados: marketing, ventas, ...) (problema: aislamineto no ofrece intercambiar informaciones para beneficar de ellos; recursos desabrochados)
    - vs. data lake (solucion más centralizada, todo junto) 

**Data Lake vs. Data Warehouse**
Data Lake (~chaos) (p.ej. spark) --> para bigdata
- data raw sin razón de almacenar
- más facil almacenar datos de multiples tipos/formatos etc.
- usados por data scientists

Data Warehouse (~estructura) --> Business Intelligence (p.ej. oracle, sql, excel)
- data procesada y estructurado
- usado por business professionals


**Ejercicio de Airport Data Departments**
--> razones para cambiar el sistema de data warehouse al data lake
- volumen y variedad: gran cantidad de datos de varios tipos a un coste relativamente bajo
- veracidad: repositorio central para sus datos, haciendo que los datos estén disponibles en toda la organización. 
- veracidad tecno: datos No relacionales y relacionales provenientes de dispositivos de IoT, sitios web, aplicaciones móviles, redes sociales y aplicaciones corporativas
- Resultados de consultas que se tornan más rápidos con almacenamiento de bajo costo

5 Vs:
- volumen: grande, cada dia de manera continua esta creciendo --> más rapido de procesar
- velocidad: datos de tiempo real, tiene que procesar rapidamente (tiempo, trafico etc)
- variedad: muchos tipos diferentes para distintos stakeholders
- veracidad: si tienes diferentes data warehouses para cada departamento surgen porblemas de actualicaziones (p.ej. technologicas: diferentes sistemas)
- valor: si un avión llega/sale más tarde surgen más costes para los airlines --> objetivo de optimizar procesos

**Data Analysis de EMT Valencia**
maturidad del sistema de a. a e.
a. Que clientes tenemos --> base de datos de clientes --> data silo
b. con las billetes podemos construir quienes de los clientes están por donde en nuestra red?
c. información de tiempo real sobre los autobúses: variedad de info (por gps)
d. twitter events: coger eventos de twitter para identificar prórrogas/ cambios que influyen el uso del transporte
e. datos sobre clima que influyen el uso del transporte


**Data Lake**
- WHY: Variedad de datos
- WHAT: escalado horizontal 
- HOW:
- WHEN:

**Data Warehouse**
menos volumen, más velocidad, menos variedad (influye los costes si quieres mejorar uno de los Vs)
- WHY: datos ya procesados, útilizados para profesionales del negocio
- WHAT: datos estructurados (en base del pasado); escaldo vertical
- HOW:
- WHEN:

**Escabalidad**
- *vertical*: El escalar hacia arriba un sistema viene a significar una migración de todo el sistema a un nuevo hardware que es mas potente y eficaz que el actual. 
- *horizontal*: La escalabilidad horizontal consiste en potenciar el rendimiento del sistema desde un aspecto de mejora global, a diferencia de aumentar la potencia de una única parte del mismo. Este tipo de escalabilidad se basa en la modularidad de su funcionalidad. 


2. definición de datos

**Data Evolution**
a. Data: peluquerias, panadería, tiendas pequenitas, adminiciones publicas
b. Information: construcción de obras, cines, NGOs, EDEM
c. Knowledge: retail (zara, mediamarkt, ...), bancos
d. Wisdom:Facebook/Insta, Amazon (AWS), netflix
3. ciclo de vida de los datos
4. data oriented architecture

