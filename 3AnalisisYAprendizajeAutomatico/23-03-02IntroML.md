### Clase del 02/03 con Jesús Prada
# Introducción al Machine Learning

## ¿Qué es Machine Learning?
Machine Learning es una rama de la inteligencia artificial cuyo objetivo es construir sistemas que aprendan automáticamente de los datos.

**Ejemplos**:
 - Netflix: recomendación de películas
 - Coche autónomo: aprende a conducir
 - Energia renovable/ solar: aprende a predecir la producción de energía

**Campos de ML consiste en**:
- Computer Science
- Business Knowledge
- Statistics & Maths


## Estructura Proyecto ML
0. plantear un problema o hipótesis a demonstrar
1. recoleccion de datos
2. preproceso de datos
3. modelización
4. evaluación
5. conclusiones/informes/visualización
6. presentación del modelo
7. despliegue del modelo
8. mantenimiento del modelo




### Clase del 10/03
## EDA: Exploratory Data Analysis
![EDA](https://datos.gob.es/sites/default/files/u322/grafico.jpg)

**Resumen de los pasos del preprocesamiento**
1. Establacer **target** (qué variable quieres predicir)
2. **Seleccionar variables** (cúales variables quieres usar para predecir)
3. **Oversampling** (si hay desbalance de clases, se añaden más ejemplos de la clase minoritaria)
4. **Subsampling** (si hay desbalance de clases, se eliminan ejemplos de la clase mayoritaria)
5. Eliminar variables **constantes** (si hay variables que no cambian, se eliminan porque no aportan valor)
6. Eliminar variables **no informativas** (si hay variables que no aportan información, se eliminan)
7. Rellenar **missing values** (si hay valores nulos, se rellenan con la media, mediana, moda, etc)
8. **Agrupar** categorías (si hay categorías con muy pocos ejemplos, se agrupan en una categoría "otros")
9. **One Hot Encoding** (si hay variables categóricas, se convierten a variables numéricas)
10. **Escalado** de variables (si hay variables con diferentes escalas, se escalan a la misma escala)
11. Eliminar variables **irrelevantes** (si hay variables que no aportan valor según sus correlaciones, se eliminan)
12. Eliminar variables **redundantes** (si hay variables que son redundantes (alta correlación entre ellas), se eliminan)
13. **Variable Importance** (hacer un ranking de los variables)
14. **Weighting** (darle más peso a las variables más importantes)
15. **PCA** (si hay muchas variables, se reducen dimensiones/ a un número menor de variables)


### Oversampling y Subsampling
- Ejemplo: Fraude (0.16%) vs. no fraude (99.84%)
- problemas desbalanceados supnoen una problemática adicional para lode modelos de ML
- ***
    - Submuestreo de la clase mayoritaria (aleatorio: global o por grupos; eliminar casos menos relevantes)
    - Submuestreo de la clase minoritaria (aleatorio: dublicarlo global o por grupos; creación de datos sintéticos: SMOTE para datos estructurados, GANS para imágenes, ...)

**SMOTE: Synthetic Minority Oversampling Technique**

- = Genera nuevos ejemplos sintéticos de la clase minoritaria
- **Algoritmo**: 
    - Establecer un número de vecinos cercanos a analizar K
    - Elegir aleatoriamente una observación de la clase minoritaria
    - Calcular los K vecinos más próximos de la observación elegida
    - Elegir aleatoriamente uno de los K vecinos y calcular la distancia entre la observación elegida y el vecino elegido
![SMOTE](https://www.researchgate.net/publication/317489171/figure/fig2/AS:504098978004992@1497197970612/Graphical-representation-of-the-SMOTE-algorithm-a-SMOTE-starts-from-a-set-of-positive.png)

### Rellenar Missing Values
- la mayoría de los modelos de ML no aceptan valores no informados, por lo tanto hay que rellenarlos
- Opciones:
    - tratar los valores categóricos no informados como una nueva categoría
    - tratar los valores numéricos no informados como un valor fijo (0, media, mediana, moda, ...)
    - predecir los valores no informados con un modelo de ML
    - imputación multivariante, MICE / estimación de máxima verosimilitud, MLE
- Tipos de valores no informados:
    - **MCAR**: Missing Completely at Random 
        - --> rellenar con media/ moda y/o predecir con un modelo de ML
    - **MAR**: Missing at Random
        - --> rellenar con media/ moda y/o predecir con un modelo de ML y/o con imputación multivariante
    - **MNAR**: Missing Not at Random
        - --> conocimineto del problema y/o rellenar con media/moda y/o predecir con un modelo de ML con imputación multivariante / Maximize Likelihood

### One Hot Encoding (o dummy encoding)
- Transforma variables categóricas en variables numéricas
- Ejemplo: 
    - variable categórica: color (rojo, verde, azul)
    - variable numérica: color_rojo, color_verde, color_azul con valores 0/1
    ![One Hot Encoding](https://i.imgur.com/mtimFxh.png)
- no debe confundirse con label encoding
    - variable categórica: color (rojo, verde, azul)
    - variable numérica: color con valores 0, 1, 2
    ![Label Encoding](https://miro.medium.com/v2/resize:fit:386/1*Yp6r7m82IoSnnZDPpDpYNw.png)

### Agrupar categorías
- para reducir la dimensionalidad de los datos
- heurística para reducir el número de categorías:
    - conociendo el negocio
    - agrupar categorías con muy pocos ejemplos en una categoría "otros"
    - clustering: Dendograma, K-means, ...

### Escalado de variables
- varios modelos de ML utilizan distancias, donde la escala tiene un gran impacto
- el modelo se centre más en variables con una escala más alta: se debe escalar las variables a la misma escala
- opciones:
    - escalar a media cero y desviación estándar 1 (más popular)
    - escalar a un rango de 0 a 1 (min-max scaling)

### Redundancia/ Irrelevancia de variables
- Eliminar variables redundantes (correlación con otros variablas predictoras superior a un umbral particular, p.ej. 0.99)
- Eliminar variables irrelevantes (correlación con el target inferior a un umbral particular, p.ej. 0.01)

### Variable Importance
- Objetivo: calcular una puntuación para cada variable que indique su importancia
- Permite seleccionar un subconjunto de las variables más importantes
    - depende del target a predecir
- Opciones:
    - correlación con el target
    - variación en rendimiento del modelo al eliminar la variable (ablation)
    - variación en rendimiento del modelo al permutuar los valores de la variable 
    - modelos univariables

### Weighting
- Objetivo: dar más peso a las variables más importantes
- Opciones:
    - sobremuestreo de la clase de mayor relevancia
    - métrica personalizada en el modelo de ML que penalice más los errores en esta clase
    - weighting: indicar el peso directamente en el modelo de ML

### PCA
- Objetivo: reducir la dimensionalidad de los datos
- Transforma las variables originales en un conjunto de nuevas variable
- estas variables se denominan componentes principales
- estos componentes continen la myor cantidad de información en el conjunto de datos originales
![PCA](https://programmathically.com/wp-content/uploads/2021/08/pca-2-dimensions.png)


### Clase del 11/03
# ML Intro 3

## Resumen del ML: tipos de ML
- **Supervised Learning**
    - *Clasificación* = clasificar en categorías (conocidas), p.ej. spam/ no spam
    - *Regresión* = predecir un valor numérico, p.ej. precio de una casa
- **Unsupervised Learning**
    - *Clustering* = agrupar en grupos (desconocidos), p.ej. clientes similares; Hierarchical, partition
    - *Dimensionality Reduction* = reducir la dimensionalidad de los datos, p.ej. PCA
- **Otros**
    - *Sistemas de recomendación* = predecir qué le puede gustar a un usuario, p.ej. películas
    - *Reinforcement Learning* = aprender a tomar decisiones, p.ej. jugar a un juego

**supervisado vs. no supervisado**
- *Supervisado*: 
    - se conoce el target, se utiliza un dataset de muestras etiquetado (train)
    - Objetivo: predecir el target (test)
    - Ejemplo: clasificar si un email es spam o no; predecir la producción de energía
- *No supervisado*:
    - se utiliza un dataset de muestras sin etiquetar (train)
    - Objetivo: encontrar patrones en los datos para extraer conocimiento útil
    - Ejemplo: Segmentar tus usarios en 2 grupos; Reducción a 2 dimensiones

## Métricas
- Regresión
    - MAE: Mean Absolute Error = error absoluto medio
    $$\text{MAE} = \frac{1}{n} \sum_{i=1}^n |y_i - \hat{y}_i|
    $$
    - MSE: Mean Squared Error = error cuadrático medio
    $$\text{MSE} = \frac{1}{n} \sum_{i=1}^n (y_i - \hat{y}_i)^2
    $$
    - RMSE: Root Mean Squared Error
    $$\text{RMSE} = \sqrt{\frac{1}{n} \sum_{i=1}^n (y_i - \hat{y}_i)^2}
    $$
    
- Clasificación
    - Accuracy: porcentaje de predicciones correctas
    $$
    \text{Accuracy} = \frac{TP + TN}{TP + TN + FP + FN}
    $$
    - Precision: porcentaje de predicciones positivas correctas
    $$
    \text{Precision} = \frac{TP}{TP + FP}
    $$
    - Sensibilidad o Recall, VPR: porcentaje de positivos que se han predicho correctamente
    $$
    \text{Recall} = \frac{TP}{TP + FN}
    $$
    - Specifficity/ Especifidad, VNR: porcentaje de negativos que se han predicho correctamente
    $$
    \text{Especifidad} = \frac{TN}{TN + FP}
    $$
    - F1 Score: media armónica de Precision y Recall
    $$
    \text{F1} = \frac{2 \cdot \text{Precision} \cdot \text{Recall}}{\text{Precision} + \text{Recall}}
    $$
    - ROC Curve: curva que muestra la tasa de verdaderos positivos frente a la tasa de falsos positivos
        - X: Espcificidad; Y: Sensibilidad
        - AUC: área bajo la curva ROC (cuanto más grande el área, más grande el AUC y mejor el modelo)
    ![ROC Curve](https://upload.wikimedia.org/wikipedia/commons/thumb/1/13/Roc_curve.svg/220px-Roc_curve.svg.png)

Variables: con ejemplos de (predicción, target)
- TP: True Positive (1, 1) 
- TN: True Negative (0, 0)
- FP: False Positive (0, 1)
- FN: False Negative (1, 0)