from airflow import DAG
from airflow.operators.empty import EmptyOperator
from airflow.operators.bash import BashOperator
from datetime import datetime

with DAG(
    dag_id="sample_dag_1",
    start_date=datetime(2022, 5, 28),
    schedule_interval=None,
    tags=["sample_dag_1"],
    default_args={'retries': 1},
) as dag:
    # Here the corresponding tasks
    start_task = EmptyOperator(task_id="start")
    log_print = BashOperator(
        task_id="bash_task",
        bash_command='echo "\n\n\nHello MDA!!!\n\n\n"',)
    end_task = EmptyOperator(task_id="end")

    # Here the DAG dependencies
    start_task >> log_print >> end_task
