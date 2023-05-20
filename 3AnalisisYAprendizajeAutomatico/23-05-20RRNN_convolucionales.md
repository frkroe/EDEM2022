### Clase del 20/05/2023 con Rafa

# Redes Neuronales Convolucionales: 

## Visión Artificial

### Introducción
- Vision artificial: procesar imagenes para extraer información; 
    - el uso de machine learning y redes neuronales para enseñar a los ordenadores a ver defectos y problemas antes de que afecten a las operaciones
    - permite a los ordenadores y sistemas extraer información significativa a partir de imágenes digitales, videos y otras entradas visuales, y tomar medidas o realizar recomendaciones en función de esa información
- Procesamiento de imagenes digitales: extracción de información derivada de imagenes digitales de forma automática o semiautomática mediante algoritmos de computador
- Problemas de classificación vs. detección vs. segmentación
    - Clasificación de objetos: identificar la clase a la que pertenece un objeto en una imagen
    - Detección de objetos: identificar la presencia de objetos en una imagen y localizarlos en la imagen
    - Segmentación de objetos: identificar los píxeles que pertenecen a un objeto en una imagen

### Imagen digital
- Una imagen digital es una representación bidimensional de una escena o un objeto en un plano
- Una imagen digital está formada por un conjunto de píxeles (picture elements) que son los elementos más pequeños de una imagen digital
- Cada píxel tiene un valor de intensidad que representa el brillo de la imagen en ese punto
- La intensidad de un píxel se puede representar mediante un número entero sin signo de 8 bits (0-255) o un número flotante de 32 bits (0-1)
- Los colores se pueden representar mediante 3 canales (RGB) o 4 canales (RGBA): 3/4 matrices de píxeles (~ canales) de la misma dimensión que representan la intensidad de los colores rojo, verde y azul (y alfa para transparencia)

### Herramientas
- Ecualización de histogramas: técnica para mejorar el contraste en una imagen
    - utiliza la la distribución accumulada de prohabilidad como función de transferencia
    - utilitza información global de la imagen	
- CLAHE: ecualización adaptativa de histogramas por bloques
    - divide la imagen en bloques y ecualiza cada bloque por separado
    - se limita la amplificación del contraste en regiones constantes para no aumentar ruido
- Convolución: operación matemática que consiste en aplicar un filtro a una imagen
    - el filtro es una matriz de números que se aplica a cada píxel de la imagen
    - el resultado es una nueva imagen con el filtro aplicado
    - se puede utilizar para detectar bordes, suavizar la imagen, etc.
![Convolución](https://miro.medium.com/v2/resize:fit:1070/0*TW1CoVdj92yxZF1s.gif)
    - se utiliza el padding para evitar que la imagen resultante sea más pequeña que la original
    - (Al aplicar una convolución la imagen de salida es más pequeña que la imagen de entrada.)
![Padding](https://miro.medium.com/v2/resize:fit:990/1*hOI0jW3CcS_yuxcmJIYjKw.gif)
- Filtos:
    - filtro promedio permite filtrar altas frecuencias en las imágenes, cuyos valores se definen a partir del tamaño de la matriz. Cuanto más grande sea la matriz más información se eliminará
    - filtro gaussiano es una forma más robusta de eliminar altas frecuencias, a cambio de un mayor coste computacional, cuyos valores se definen a partir del tamaño de la matriz y de la desviación típica de la distribución gaussiana
![Filtros](https://www.monografias.com/trabajos108/filtrado-espacial-imagenes/Diapositiva18.png)
    - filto de Sobel es un operador que se utiliza para detectar bordes en imágenes, cuyos valores se definen a partir de dos matrices de 3x3. Permite obtener los gradientes (derivadas se primer orden) de cambio en horizontal y vertical
    - filtop laplaciano es un operador que se utiliza para detectar bordes en imágenes
- Transformaciones geométricas: rotación, traslación, escalado
    - se utilizan para corregir la perspectiva de una imagen, cambiar su tamaño, etc.
    - se utilizan matrices de transformación para aplicar las transformaciones
    - se puede utilizar la interpolación para rellenar los huecos que se generan al aplicar las transformaciones
- Máscaras de segmentación: se utilizan para segmentar objetos en una imagen = permiten la obteneción de una gran variedad de parámetros del objeto:
    - posibles parámetros: área, relación de aspeto, diámetro de contorno, bounding box, orientación, etc.

-----------------------------------

## Fundamentos

### Introducción
- Redes neuronales convolucionales (CNN): redes neuronales especializadas en procesar datos con estructura de imagen
- están diseñadas para extraer patrones bidimensionales a diferentes
escalas y niveles de complejidad.


### Apliaciones
- Coches autónomos
- Reconocimiento facial
- Segmentación de imágenes médicas
- etc.
### Arquitectura
![CNN](https://1394217531-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-LvBP1svpACTB1R1x_U4%2F-LvHJ32JL_4hyT9PVdc0%2F-LvHSjfW_yCbwBPotco2%2Fimage.png?alt=media&token=58215265-4ec2-484f-9721-5094fc0bd328)

### Bloques CNN
- Bloque convolucional: extrae patrones bidiemensionales de la imagen, 
- Parámetros principales: número de filtros, tamaño de los filtros, stride, padding, activación
- La salida de los bloques convolucionales se denomina mapas de activación.El tamaño de la última dimensión de los mapas de activación depende del número de filtros del bloque.
- El tamaño de los filtros del bloque define cuantas files y columnas van a tener los filtros que componen el bloque.
- El padding va a definir si se añaden píxeles en los bordes de los mapas de activación para mantener el número de filas y columnas realizar la convolución.El número de píxeles a añadir depende del tamaño de los filtros.
- El Stride define el salto de ventana deslizante en la operación de convolución.El tamaño de los mapas de los mapas de activación se reduce cuando aumenta el stride.
- En bloques convolucionales se suele utilizar la activación ReLU para introducir no linealidad en la red.
- Formula para calcular el output size de un imagen: 
    $$output size = \frac{W+2P-F}{S}+1$$
    - W: input size / tamaño de la imagen de entrada
    - F: kernel size / tamaño de los filtros 
    - P: padding / relleno de la imagen de entrada
    - S: stride / salto de ventana deslizante de la convolución
- Bloque de pooling: reduce el tamaño de los mapas de activación para aummentar la escala de la información que se extrae de la imagen
    - Parámetros principales: tamaño de pooling, stride, padding
    - Tipos: MaxPooling y el AveragePooling. El MaxPooling se suele utilizar para extraer características más relevantes y el AveragePooling para reducir el tamaño de los mapas de activación.
- Bloque flatten: transforma los mapas de activación en un vector unidimensional para poder introducirlos en una red neuronal densa (fully connected)
- Bloque fully connected: red neuronal densa que se utiliza para clasificar los objetos de la imagen
    - Parámetros principales: número de neuronas, activación
    - La salida de la red neuronal densa es un vector de probabilidades que se puede utilizar para clasificar los objetos de la imagen

### Mensajes clave
El uso de CNN ha crecido de forma exponencial desde 2012.

Los principales bloques constituyentes de las CNN son:
- Bloques convolucionales.
- Bloques de pooling.
- Bloque flatten.
- Bloques fully-connected.

Existen una gran variedad adicional de bloques, pero estos pertenecen a dominios concretos, menos generalistas.

-----------------------------------
## Técnicas avanzadas

### Introducción
Las CNN necesitan un gran número de imágenes para entrenar de forma adecuada. En la vida real, no hay muchos datos disponibles. Para nosotros poder entrenar una CNN con pocos datos, necesitamos utilizar técnicas avanzadas de entrenamiento.

Esas técnicas avanzadas de entrenamiento se basan en
- reducir overfitting
- procesado de datos en la CNN
- generación de datos sintéticos (muestras artificiales)
- reútilización de pesos obtenidos de otros datasets


### Técnicas
- Dropout: se utiliza para prevenir/ reducir el sobreajuste = overfitting. Se aplica en las capas fully connected. Se desactivan aleatoriamente un porcentaje de neuronas de la capa fully connected. De esta forma, la red neuronal no puede memorizar los datos de entrenamiento.
    - opcional
- Batch normalization: se utiliza para acelerar el entrenamiento de la red neuronal. Permite utilitzar Learning Rates más altos = el modelo entrena más rapido y estable.
    - opcional
- Data Augmentation: se utiliza para reducir el overfitting. Se aplican transformaciones aleatorias geométricas a las imágenes de entrenamiento. De esta forma, se obtienen nuevas imágenes que se pueden utilizar para entrenar la CNN.
    - opcional pero muy recomendable
- Transfer Learning: se utiliza para entrenar una CNN con pocos datos. Se reutilizan los pesos de una CNN entrenada con un dataset grande. De esta forma, se puede entrenar una CNN con pocos datos.
    - obligatorio si no se dispone de un dataset grande

### Mensajes clave
El Transfer Learning es una técnica clave en las CNN que incrementa en gran medida el desempeño de los modelos. Por este motivo, no es recomendable omitir esta técnica si se quieren conseguir los mejores resultados.

En esta clase se han explicado los conceptos sobre los que se fundamentan todas las CNN de clasificación. Ahora tenéis en vuestra mano la base necesaria para entender cualquier publicación científica al respecto.

La lectura de publicaciones es fundamental, tanto nuevas como antiguas. Ya que esto os va a permitir conocer tanto el contexto de las metodologías como los últimos avances en el campo.