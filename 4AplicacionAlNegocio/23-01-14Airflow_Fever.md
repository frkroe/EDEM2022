### Clase de 14/01/23 con Vicent Asensio
# fever & Airflow

## Arquitectura: 
### Tiene 4 partes
- scheduler: lee y avanza todos los ficheros de DAGs, controla su programación y pasa las tareas al worker
    - DAG = Directed Acyclic Graph: llevan las tareas con dependencias entre ellas y branches/ramas; con schedule
- executor/worker: ejecuta las tareas
- webserver: el interfaz (la forma de interactuar con Airflow)
- metadata DB: almacenar toda la información de lo que pasa en Airflow

### 2 tipos de ejecucción (con subtipos):
- ejecucción local: 
    - secuencial
    - local
- ejecucción de remoto: 
    - celery (workers siempre levantados)
    - Kubernetes (se crea workers que ejecutan la tarea y después se destruyen)

## DAG código
```
from airflow import DAG
from datetime import datetime

with DAG(
    dag_id="string"
    start_date=datetime(2022, 12, 2)
    schedule_time= ..

)
```
### DAG Dependencies
```
start_task >> log_print >> end_task
```