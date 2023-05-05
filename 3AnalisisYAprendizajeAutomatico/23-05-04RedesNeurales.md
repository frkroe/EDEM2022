### Clase de Rafael López González
# Redes Neuronales

## Introducción
### Definición
Una red neuronal es un método de la inteligencia artificial que enseña a las computadoras a procesar datos de una manera que está inspirada en la forma en que lo hace el cerebro humano.

### Objetivo
Entender el funciamiento de las redes neuronales totalmente conectadas

![Red Neuronal](https://www.futurespace.es/wp-content/uploads/2021/04/Etimologia-de-la-red-neuronal.jpg)

## Fundamentos
### Redes Neuronales Biológicas
- Las neuronas son células especializadas en la transmisión de señales eléctricas y químicas.
- Las neuronas se conectan entre sí para formar redes neuronales.
- Las redes neuronales son la base del sistema nervioso.
- Las redes neuronales son la base del aprendizaje y la memoria.
- Las neuronas reciben señales a través de las dendritas y las envían a través de los axones, en caso de que se activen.
- Las neuronas dan más importancia a unas señales que a otras.

### Redes Neuroales Artificiales
- Las redes neuronales artificiales son un modelo matemático inspirado en las redes neuronales biológicas.
- Las redes neuronales artificiales son un modelo de aprendizaje automático.
- Se trabaja solo con números float
- La función de activación es la función que se aplica a la salida de cada neurona.	
- Los pesos son los valores que se multiplican por las entradas de cada neurona. Ponderan en que medida la entrada de una neurona influye en la salida de otra.
- La capa de entrada es la capa que recibe los datos de entrada. Está formada por las variables de entrada a la red neuronal (ejemplo: pixeles de una imagen, características de una vivienda).
- Las capas ocultas son las capas intermedias entre la capa de entrada y la capa de salida. Se llaman ocultas porque no se ven los datos que hay en ellas.
- La capa de salida es la capa que devuelve los datos de salida. Está formada por las variables de salida de la red neuronal (ejemplo: probabilidad de que una imagen sea un gato, precio de una vivienda).

![Red Neuronal Artificial](https://www.atriainnovation.com/wp-content/uploads/2019/10/Redes_neuronales_esquema.png)
![Red Neuronal Artificial](https://www.cs.us.es/~fsancho/images/2019-12/artneur.gif)


- Número de neuronas = número de parametros a estimar

### Mensajes Clave
Parámetros que se tienen que elegir y ajustar durante el diseño de redes neuronales totalmente conectadas.
- Número de capas ocultas = número de capas que hay entre la capa de entrada y la capa de salida.
- Número de neuronas por capa = número de parámetros a estimar.
- Funciones de activación = función que se aplica a la salida de cada neurona.
- Función de coste = función que se utiliza para medir el error de la red neuronal.
- Tasa de aprendizaje (learning rate, alpha)= parámetro que controla el tamaño de los pasos que se dan durante el entrenamiento.
- Número de epochs = número de veces que se entrena la red neuronal con el mismo conjunto de datos.
- Tamaño de batch = número de muestras que se utilizan a la vez con el gpu, para calcular el error y actualizar los pesos.

## Manos a la obra
- workbook 1
- workbook 2