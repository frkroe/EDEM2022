### Clase de 14/04 con Marc Marín
# Técnicas para hacer Dimensionality Reduction

## Overview
### Definiciones
- Dimensionalidad = número de characteristics/features (variable, columna) de un modelo 
- High dimensional data = número de characteristics/features p es más alto que el número de observaciones N
### curse of dimensionality (maldición de la dimensionalidad) 
- = problemas que surgen cuando el número de characteristics/features es muy alto
- modelo empeora en cierto punto a medida que se añaden más characteristics/features 
- tiende als overfitting
- efecto frontera = cuando se añade una nueva característica, el modelo se vuelve más sensible a los datos de entrenamiento
- data sparsity = cuando el número de observaciones es muy bajo, el modelo se vuelve más sensible a los datos de entrenamiento
- complejidad computacional = cuando el número de characteristics/features es muy alto, el modelo se vuelve más complejo computacionalmente: requiere más tiempo y más recursos 

|Comparación de|Menor Número de Variables|Mayor Número de Variables|
|---|---|---|
|interpretación|facil|más dificil|
|overfitting|menos probalbe|más probable|
|precision al predecir|menor|mayor|

### Feature Selection y Feature Extraction
- Feature Selection = seleccionar un subconjunto de características del modelo original
    - elimina características originales para obtener menos características
- Feature Extraction = crear nuevas características a partir de las características originales
    - juntar características originales para obtener menos características
    - convertir una imagen en un vector de características
    - one hot encoding


## Para qué sirve la reducción de dimensionalidad
- maldición de la dimensionalidad
- garbage in, garbage out: si el modelo tiene muchas características, es probable que algunas de ellas no aporten información útil
- la navaja de ockham: si el modelo tiene muchas características, es probable que algunas de ellas sean redundantes
- modelos más sencillos de entrenar (menos columnas)
- menos tiempo computacional

## Filter Methods 
(como parte del procesamiento de datos)

- vaianza = elimna variables que son muy similares/ constantes
- chi cuadrado = elimina variables que no son independientes de la variable objetivo; para variables cualitativas
- correlación de pearson = para estudiar la relación (o correlación) entre dos variables aleatorias cuantitativas
- correlación de spearman = para estudiar la relación (o correlación) entre dos variables aleatorias cualitativas
- t-SNE = método para visualizar datos de alta dimensionalidad (solo funciona con variables numéricas), reduce la dimensionalidad a 2 o 3 dimensiones

### ventajes y desventajas de los metodos de filtro
- ventajas
    - reducción del tiempo de procesamiento y almacenamiento
    - mejora de la interpretación
    - reducción del overfitting
- desventajas
    - analizan las variables de forma individual
    - no detectan la correlación grupal


## Wrapping Methods (Métodos de Envoltorio)
= métodos que evalúan el rendimiento de un modelo con un subconjunto de características y seleccionan el subconjunto de características que mejor se ajusta al modelo


- Forward Selection = empieza con un modelo vacío y añade características una a una hasta que el modelo mejora
- Backward Elimination = empieza con un modelo con todas las características y elimina una a una hasta que el modelo mejora
- Bidirectional Elimination = empieza con un modelo vacío y añade características una a una hasta que el modelo mejora; luego empieza con un modelo con todas las características y elimina una a una hasta que el modelo mejora
- Random Generation = empieza con un modelo vacío y añade característiÖcas una a una hasta que el modelo mejora; luego empieza con un modelo con todas las características y elimina una a una hasta que el modelo mejora; luego repite el proceso varias veces y selecciona el modelo que mejor se ajusta
- Score Comparison = empieza con un modelo vacío y añade características una a una hasta que el modelo mejora; luego empieza con un modelo con todas las características y elimina una a una hasta que el modelo mejora; luego repite el proceso varias veces y selecciona el modelo que mejor se ajusta; luego compara los resultados de los modelos y selecciona el mejor

### PCA (Principal Component Analysis)
= método de extracción de características que busca la combinación lineal de características que maximiza la varianza de los datos
- técnica lineal de feature extraction
- intentar mantener esenciales que tienen mas variación en los datos
- técnica de reducción unsupervisada
- es necasario estandarizar los datos
- añadir un vector hacia donde está concentrada la mayor parte de los datos
- añadir un segundo vector que sea perpendicular al primero y que esté lo más alejado posible de los datos

## Embedded Methods