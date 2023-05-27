### Clase del 26/05/2023 con Rafa

# Redes Neuronales Convolucionales: 

## Aplicaciones avanzadas


### Segmentación de imágenes

La segementación de imágenes es una tarea de visión artificial que consiste en dividir una imagen en partes o regiones de interés. Mediante CNN asigna a cada pixel de una imagen de entrada la probalidad de formar parte de una clase determinada. El mapa de probilidades que genera recibe el nombre de máscara de segmentación.

- **UNet** como arquitectura más utilizada para segmentación de imágenes: Se caracteriza por tener una fase de compresión basada en bloques convolucionales y maxpooling, y de una fase de expansión formada por bloques convolucionales y bloques de convoluciones transpuestas.
- Las **convoluciones transpuestas permiten aumentar el tamaño** de los mapas de activación, con lo que se consigue una máscara de segmentación salida del mismo tamaño que la imagen de entrada. 
- **Coeficiente de Dice** (=F1 Score) como métrica de evaluación de la segmentación. Es una métrica que se utiliza para medir la similitud entre dos muestras. Se calcula como el doble de la intersección entre dos muestras dividido entre la suma de ambas muestras. $Dice = \frac{2*TP}{(TP+FP)+(TP+FN)}$

### Detección de objetos
La Detección de Objetos consiste en generar una bounding box con una probabilidad de clase asociada por cada objeto que se encuentre en la imagen de entrada.

- **YOLO (You Only Look Once)** es una arquitectura de red neuronal convolucional que se caracteriza por ser un modelo de detección de objetos en tiempo real. Esta compuesta por bloques convolucionales y capas de pooling, seguidas de capas totalmente conectadas.
- Predicciones de los modelos están encodificadas de la manera: [SxSx(Bx5+C)] donde S es el tamaño de la grilla, B el número de bounding boxes por celda, C el número de clases y 5 son los parámetros de cada bounding box (x, y, w, h, confianza).

### Otras aplicaciones
- **Super resolución**: aumentar la resolución de una imagen.
- **Transferencia de estilo**: aplicar el estilo de una imagen a otra.
- **Estimación de pose**: estimar la pose de una persona en una imagen.

### Continuará ...