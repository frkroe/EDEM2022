### Clase del 21/01/2023
# Vertex AI as Data Engineer

## Qué es Vertex AI?
= Crea, despliega y escala modelos de aprendizaje automático rápidamente con herramientas de aprendizaje automático totalmente gestionadas para cualquier caso práctico
= plataforma que reúne dos productos de GCP (Google Cloud Platform): AutoML & AI Platform
= nos proporciona herramientas que cubren todo el flujo de trabajo (notebooks, datasets, models, deploy)

## Flujo del trabajo de ML (en círculo)
preparar datos --> entrenar modelo --> evaluar e iterar modelo --> desplegar modelo (deploy y serving) --> monitor modelo --> preparar datos ...

## Qué es AutoML?
= suele ser una biblioteca de código abierto que simplifica cada uno de los pasos que se dan en la creación de modelos de aprendizaje automático. Tiene recursos que se pueden emplear tanto en el manejo de un conjunto de datos sin procesar hasta la implementación del modelo.
= capacidad de entrenar un amplio rango de modelos sin preocuparnos por los detalles
= es limitado a un número horas (budget, maximum node hours) para limitar el costo económico
= seleccionas dataset, objetivo, peso, compute y early stopping

## Qué es Platform AI?
= para entrenar tus modelos de aprendizaje automático a gran escala, para alojar tu modelo entrenado en la nube y para usar tu modelo con el propósito de realizar predicciones sobre datos nuevos.
= capacidad de entrenar un modelo de AI empleando nuestro propio código
= permite acceder a todo el resto de ventajas que poporciona Vertex AI (deploy, ...)