### Clase del 22 de abril de 2021 con Pablo
# Clustering: K-Means, DBSCAN, Gaussian Mixture Models


## K-Means

### Definición: 
K-Means es un algoritmo de clustering que agrupa los puntos de un dataset en función de la distancia entre los puntos. Los puntos que están más cerca se agrupan en clusters, mientras que los puntos que están más lejos se agrupan en clusters aparte.



## DBSCAN = Density-Based Spatial Clustering of Applications with Noise

### Definición: 
DBSCAN es un algoritmo de clustering que agrupa los puntos de un dataset en función de la densidad de los puntos vecinos. Los puntos que están en zonas densas de puntos se agrupan en clusters, mientras que los puntos que están en zonas poco densas se agrupan en clusters aparte. Se puede usar para datos númericos y categóricos.

### KPrototypes
es una variante de K-Means que permite trabajar con datos mixtos (numéricos y categóricos).

### Diferencia a familia "k" de algoritmos de clustering: 
En la familia "k" de algoritmos de clustering, se define el número de clusters a priori. En DBSCAN, el número de clusters se define a posteriori.

### Parametros:
Los clusters se definen a través de dos parámetros:
- *EPSILON* $\epsilon$: distancia máxima entre dos puntos para que se consideren vecinos
    - Hay que hacer antes los Nearest Neighbors: distancia máxima entre dos puntos para que se consideren vecinos; se usa para el epsilon en el sentido de que si dos puntos están a una distancia menor que epsilon, entonces son vecinos
- *min_samples*: número mínimo de puntos vecinos que debe tener un punto para ser considerado un punto central

### Funcamiento:
1. definición de los parametros $\epsilon$ y *min_samples*
2. clasificación de puntos en:
    - puntos centrales (core points)
    - puntos frontera (border points)
    - puntos ruido (noise points)
3. expansión de clusters a partir de puntos centrales
4. asignación de puntos frontera a clusters


### Ventajas:
- se manaeja clusters de formas y tamaños diferentes
- eficiente computacionalmente: va más rápido que K-Means

### Desventajas:
- siempre se usa el mismo parámetro $\epsilon$ para definir la distancia entre puntos vecinos, eso es un poco naïve

### Casos de uso:
- detección de anomalías
- segmentación de imágenes
- redes sociales: detección de comunidades
- biotech: agrupar proteínas en función de su similtud estructural

## Gaussian Mixture Models
### Definición:
Gaussian Mixture Models es un algoritmo de clustering que agrupa los puntos de un dataset en función de la probabilidad de que los puntos pertenezcan a un cluster. Los puntos que tienen más probabilidad de pertenecer a un cluster se agrupan en clusters, mientras que los puntos que tienen menos probabilidad de pertenecer a un cluster se agrupan en clusters aparte. Se puede usar para datos númericos y categóricos.

Cada cluster tiene su propia distribución (media y covarianza)

### Funcamiento:
1. Initialización de los parámetros de los clusters (selecionamos el número de clusters):
    - *mu*: vector de medias de los clusters
    - *sigma*: matriz de covarianzas de los clusters
    - *pi*: vector de probabilidades de los clusters
2. Ecpectation-Maximization (EM) algorithm:
    - Expectation: calcular la probabilidad de que cada punto pertenezca a cada cluster
    - Maximization: actualizar los parámetros de los clusters en función de la probabilidad de que cada punto pertenezca a cada cluster
3. Convergencia: cuando los parámetros de los clusters no cambian, el algoritmo ha convergido

### Objetivo:
- número de gaussians (dimensiones) que mejor se ajusta a los datos
- posición de los clusters
- varianza de los clusters

### Ventajas:
- se manaeja clusters de formas y tamaños diferentes
- no es hot clustering (se pueden solapan los clusters, y tu decides a cual cluster pertenece cada punto)

### Desventajas:
- no es para detectar puntos ruidos

### Casos de uso:
- diagnósticos médicos