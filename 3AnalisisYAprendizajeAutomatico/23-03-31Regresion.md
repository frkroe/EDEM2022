### Clase de 31/03 con Marc Marín
# ML - Regresión (hacer un modelo que prediga un valor numérico)
## 1 Introducción AL ML
**Ejemplos de ML Clásicos:**
- clasificación de spam (spam/ no spam)
- reconocimiento de facial (facebook, apple, etc.)
- sistemas recomendadores (amazon, netflix, etc.)
- neural machine translation (con transformers: entender y traduccir el contexto de una frase, reconocer los caracteres, etc.)
- anuncios personalizados (google, facebook, etc.)
- AR/VR - Realidad aumentada y virtual (gafas, diseño de avatares/voces/caras, mezclar vida real con vida digital etc.)
- curiosity - Robot Marte (entrenado para coger muestras; autónomo, explorar, aprender, etc.)
- coches autónomos

**Diferenciar los conceptos:**
- AI: inteligencia artificial = hacer que las máquinas piensen como los humanos
- ML: machine learning = hacer que las máquinas aprendan a partir de datos
- DL: deep learning = hacer que las máquinas aprendan a partir de datos (con redes neuronales)

![AI, ML, DL](https://classadviser.in/wp-content/uploads/2021/06/al-ml-dl.png)

![Papel de la IA](https://emtemp.gcom.cloud/ngw/globalassets/en/articles/images/2023-gartner-emerging-technologies-and-trends-impact-radar.png)
![Hype Cycle de la IA](https://emtemp.gcom.cloud/ngw/globalassets/intl-es/articles/hype-cycle-para-la-ia-2022-es.png)

## Dataset 
**Predecir el precio de vivienda**

en función de las siguientes características:
- metros cuadrados
- baños
- índice de criminalidad
- dormitorios
- barrio

## 2 Regresión lineal
La regresión lineal es un modelo matemático que permite predecir un valor numérico a partir de una o más variables independientes. En este caso, el valor numérico que queremos predecir es el precio de la vivienda. 

El modelo aprende la relación entre el input X (las características) y el output Y, y luego, a partir de un input X, predice el output Y.

En el contexto de ML, el modelo se entrena con un dataset de entrenamiento, y luego se evalúa con un dataset de test con el objetivo de predecir valores futuros.

**Usos de la regresión lineal:**
- predicción de valores
- relaciones entre variables del modelo
- importancia de las características del modelo

**Ejemplo:** predicción del precio en función de los metros cuadrados de la vivienda

### Modelo simple de la regresión lineal:
$$f\left(x\right)= w_0 + w_1*x $$
- x = característica (feature), covariable, variable independiente
- y = observación, respuesta o variable dependiente
- w0 = parametro constante o punto de corte eje, coeficiente intercepción
- w1 = parametro de la pendiente (slope)

### Métricas de evaluación:

**RSS (Residual Sum of Squares):** 
- definición: suma de los cuadrados de los residuos (coste de usar una recta)
$$ RSS = \sum_{i=1}^{n} \left( y_i - f(x_i\right))^2 $$

- objetivo: minimizar el RSS = coste sobre todos los posibles w0, w1
$$ RSS(w_0, w_1) = \sum_{i=1}^{n} \left( y_i - w_0 - w_1*x_i\right)^2 $$	

- interpretación: 
    - RSS: cuanto más pequeño sea el RSS, mejor será el modelo
    - w0: precio de la vivienda cuando x = 0 (no tiene mucho sentido); el precio del terreno de la vivienda con 0 metros cuadrados [unidad $]
    - w1: cúal es el cambio predicho del precio de la vivienda si aumenta el metro cuadrado por 1 unidad [unidad $/m2]

- optimización: 
    - minimizar el RSS sobre todos los posibles w0, w1
    $$ min_{w_0, w_1} RSS(w_0, w_1) = \sum_{i=1}^{n} \left( y_i - w_0 - w_1*x_i\right)^2 $$
    - con hallar Max o Min de forma analítica (cálculo)
        - concava: max g(w) --> dg(w)/dw < 0
        - convexa: min g(w) --> dg(w)/dw > 0

## 3 Regresión múltiple
**Ejemplo:** predicción del precio en función de los metros cuadrados de la vivienda, el número de baños y el índice de criminalidad
$$f\left(x\right)= w_0 + w_1*x_1 + w_2*x_2 + ... + w_p *x_p$$

## 4 Regresión polinómica
**Ejemplo:** predicción del precio en función de los metros cuadrados de la vivienda (con varios grados polinómicas)
### Modelo simple de la regresión polinómica:
$$f\left(x\right)= w_0 + w_1*x + w_2*x^2 + ... + w_p *x^p$$

### Modelado de la estacionalidad:
- estacionalidad: variación de la demanda a lo largo del tiempo
- para eliminar tendencias de series temporales

## 5 SVM y SVR
### SVM - Introducción
**Support Vector Machine (SVM)** es un algoritmo de aprendizaje supervisado que se utiliza para clasificación y regresión.
- Input: datos etiquetados (aprendizaje supervisado)
- ML Model: SVM para resolver problemas de clasificación y regresión
- Output: hiperplano óptimo que separa mejor los datos en un espacio de altas dimensiones

### SVM - Espacio bidimensional
- hiperplano: línea que separa dos clases
    - linealmente separables: datos que se pueden separar con una línea recta (= hiperplano) en dos clases
    - no linealmente separables: datos que no se pueden separar con una línea recta
    - el mejor hiperplano es aquel que maximiza la distancia entre los puntos más cercanos de cada clase (margen)
    - mas ancho es el margen, mejor es el hiperplano y mejor la clasificación
- vector de soporte: vectores en un espacio p-dimensional y soportan (definen) el maximal margin hiperplane; determinan el limite de decisión
- parámetro C en SVM: controla el balance entre el margen y el error de clasificación; establece un margen larga y reduce la tasa de clasificación errónea
    - C alto: margen pequeño, error de clasificación alto
    - C bajo: margen grande, error de clasificación bajo

![SVM - Espacio bidimensional](https://editor.analyticsvidhya.com/uploads/729834.png)

![SVM - parámetro C](https://training.atmosera.com/wp-content/uploads/2021/07/c-margins-1.png)

Problemas del MMC (maximal margin classifier):
- poca aplicación práctica
- sensible a variaciones (poca robustez)
- suele conllevar un gran coste computacional

Soft Margin SVM = permite observaciones en el lado incorrecto del hiperplano (margen) con el objetivo de minimizar el error de clasificación

Concepto de Kernel:
- kernel: función que transforma los datos en un espacio de alta dimensión (no linealmente separables) en un espacio de baja dimensión (linealmente separables)
    - Kernel (K) es una función que devuelve el resultado del dot product (producto escalar) entre dos vectores realizan
    - se usa para datos no lineales
- Tipos de Kernel:
    - lineal: K(x, y) = x * y
    - polinómico: K(x, y) = (x * y + 1)^d
    - RBF (Gaussian): K(x, y) = exp(-gamma * ||x - y||^2)

### SVR - Introducción
Support Vector Regression (SVR) es un algoritmo de aprendizaje supervisado que se utiliza para regresión.

## 6 XGBoost
## 7 Practicas
