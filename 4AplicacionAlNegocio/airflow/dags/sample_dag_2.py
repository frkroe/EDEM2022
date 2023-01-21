from airflow import DAG
from airflow.operators.empty import EmptyOperator
from airflow.operators.python import BranchPythonOperator
from airflow.utils.trigger_rule import TriggerRule
from datetime import datetime

with DAG(
    dag_id="sample_dag_2",
    start_date=datetime(2022, 5, 28),
    schedule_interval=None,
    tags=["sample_dag_2"],
    default_args={'retries': 1},
) as dag:
    # Here the corresponding tasks
    start_task = EmptyOperator(task_id="start")
    end_task = EmptyOperator(task_id="end", trigger_rule=TriggerRule.ALL_DONE)
    true_task = EmptyOperator(task_id="true_task")
    false_task = EmptyOperator(task_id="false_task")

    def is_saturday():
        if datetime.today().isoweekday() == 6:
            return "true_task"
        return "false_task"
    
    is_saturday = BranchPythonOperator(task_id="is_saturday", python_callable=is_saturday)

    # dependencies
    start_task >> is_saturday >> [true_task, false_task] >> end_task

