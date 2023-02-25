### Clase del 24/02 con Miguel Rua
# Estatística con Python

## Nociones básicos
- población = conjunto de todos los elementos de interés 
- muestra = subconjunto de la población
- parámetro = característica de la población
- estadístico = característica de la muestra

## Estadistica descriptiva vs. inferencial:
- Estadistica descriptiva:  describe la población
- Estadistica inferencial:  describe la muestra

## Tipos de variables:
- **variable aleatoria**: formalizacion matemática de una cantiad o un objeto que dependen de un evento aletorio
- **variable categorica**:  variable que puede tomar un numero finito de valores
    - *nominativa*:  no tiene orden, nombran/ etiquan/ caracterizan a los elementos
    - *ordinal*:  tiene orden
- **variable cuantitativa**:  variable que puede tomar un numero infinito de valores
    - *discreta*:  solo puede tomar valores enteros
    - *continua*:  puede tomar cualquier valor


## Descriptiva de variables categóricas
- **Tabla de Frequencias** = tabla que muestra el numero de veces que aparece cada valor de la variable
    - *frecuencia absoluta*:  numero de veces que aparece cada valor
    - *frecuencia relativa*:  numero de veces que aparece cada valor dividido por el numero total de valores
    - *porcentaje*:  numero de veces que aparece cada valor dividido por el numero total de valores multiplicado por 100
    - *frecuencia acumulada*:  suma de las frecuencias anteriores (absolutas y relativas)
- **Diagrama de barras (BAR CHART)**:  gráfico que muestra la frecuencia de cada valor de la variable
- **Diagrama de sectores (PIE CHART)**:  gráfico que muestra los porcentajes de cada valor de la variable 

## Descriptiva de variables cuantitativas continuas
- **Tabla de frecuencia con intervalos:** tabla que muestra el numero de veces que aparece cada intervalo de la variable
    - *frecuencia absoluta*:  numero de veces que aparece cada intervalo
    - *frecuencia relativa*:  numero de veces que aparece cada intervalo dividido por el numero total de valores
    - *porcentaje*:  numero de veces que aparece cada intervalo dividido por el numero total de valores multiplicado por 100
    - *frecuencia acumulada*:  suma de las frecuencias anteriores (absolutas y relativas)
- **Histograma**:  gráfico que muestra la frecuencia de cada intervalo de la variable (rangos de valores continuos)

## Medidas descriptivas univariantes
- **Tendencia central** = valor que representa el centro de la distribución de los datos
    - *media aritmética (arithmetic mean)*:  suma de todos los valores dividido por el numero de valores
    - *mediana (median)*:  valor que divide la distribución de los datos en dos partes iguales
    - *moda (mode)*:  valor que aparece con mayor frecuencia
    - en Python: describe()
- **Posición** = valor que representa la posición de un valor en la distribución de los datos
    - *cuartil*:  valor que divide la distribución de los datos en cuatro partes iguales (Q1, Q2, Q3)
    - *percentil*:  valor que divide la distribución de los datos en cien partes iguales (P25, P50, P75)
    - *mínimo y máximo*:  valor más pequeño y más grande de la distribución de los datos
    - en Python: describe()
- **Dispersión** = medida de la variabilidad de los datos
    - *rango*: diferencia entre el valor máximo y el valor mínimo
    - *rango intercuartilico (IQR)*:  diferencia entre el cuartil 3 y el cuartil 1
    - *varianza*: suma de las diferencias al cuadrado entre cada valor y la media dividido por el numero de valores
    - *desviación típica*: raíz cuadrada de la varianza
    - *coeficiente de variación*: desviación típica dividida por la media
- **Forma de distribución** = forma de la distribución de los datos
    - *simétrica*:  la media, la mediana y la moda son iguales
    - *asimétrica (skewness)*:  la media, la mediana y la moda son diferentes (hacia la derecha con media > mediana o hacia la izquierda con media < mediana)

## Desciptiva bivariante
- **Covarianza**:  medida de la relación lineal entre dos variables
    - *covarianza positiva*:  cuando una variable aumenta, la otra también aumenta
    - *covarianza negativa*:  cuando una variable aumenta, la otra disminuye
    - *covarianza nula*:  cuando una variable aumenta, la otra no cambia (son independientes linealmente)
- **coeficiente de correlación (de Pearson)**: covarianza entre dos variables dividida por el producto de sus desviaciones típicas (entre -1 a 1)
    - *correlación positiva*:  cuando una variable aumenta, la otra también aumenta
    - *correlación negativa*:  cuando una variable aumenta, la otra disminuye
    - *correlación nula*:  cuando una variable aumenta, la otra no cambia (son independientes linealmente)

---
### Clase del 25/02
# Estatística con Python (continuación)

## Conceptos básicos
- **Función de Probabilidad:**  función que asigna a cada valor de la variable aleatoria la probabilidad de que ocurra    
- **Función de Distribución:** función que asigna a cada valor de la variable aleatoria la probabilidad de que ocurra o de que ocurra un valor menor o igual    
- **Función de densidad:** función que asigna a cada valor de la variable aleatoria la probabilidad de que ocurra o de que ocurra un valor menor o igual    
    - en Python: stats.norm.pdf()

![Funciones de distribución y densidad](https://www.uv.es/ceaces/base/variable%20aleatoria/desidis.gif)


## Distribuciones de probabilidad   
1. **Distribuciones discretas** = variables aleatorias que solo pueden tomar valores enteros	
    - *uniforme discreta*: cada valor tiene la misma probabilidad (ejemplo: tirar un dado)
    - *de Bernoulli*:  solo dos valores posibles (0 o 1) (ejemplo: lanzar una moneda)
    - *binomial*: suma de n variables aleatorias de Bernoulli (ejemplo: lanzar una moneda 10 veces, número de aprobados en un examen entre los matriculados)
    - *de Poisson*:  número de eventos que ocurren en un intervalo de tiempo (ejemplo: número de accidentes de tráfico en una carretera en un día)

2. **Distrubuciones continuas** = variables aleatorias que pueden tomar cualquier valor
    - *normal*: distribución de probabilidad más utilizada (ejemplo: altura de una persona)
    ![Distribución normal](https://wikiimg.tojsiabtv.com/wikipedia/commons/thumb/1/1a/Boxplot_vs_PDF.svg/250px-Boxplot_vs_PDF.svg.png)
    - *chi-cuadrado de Pearson*: suma de n variables aleatorias normales al cuadrado (ejemplo: suma de los cuadrados de las diferencias entre los valores observados y los valores esperados)
    - *t de Student*: cociente entre una variable aleatoria normal y una variable aleatoria chi-cuadrado de Pearson (ejemplo: cociente entre la diferencia entre los valores observados y los valores esperados y la desviación típica de los valores observados)(cuando no estamos seguros si es una distribución normal)
    - *F de Fisher-Snedecor*: cociente entre dos variables aleatorias chi-cuadrado de Pearson (ejemplo: cociente entre la varianza de los valores observados y la varianza de los valores esperados)
3. **Realciones entre las principales distribuciones**
![relaciones entre normal, binomial y poisson](data:image/png;base64,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)


4. Otros conceptos
    - *Teorema del límite central:*  la suma de n variables aleatorias independientes y con distribución normal converge a una distribución normal cuando n tiende a infinito; es decir, cuanto más asimétrica sea la distribución, mayor tiene que ser el valor de n para que sea aceptable la aproximación

5. In Python:
```
import scipy.stats as stats
<distribucion> = [uniform, norm, binom, poisson]
``` 
La lista de distribuciones disponibles en scipy.stats es la siguiente: [LISTA DE DISTRIBUCIONES EN STATS](https://docs.scipy.org/doc/scipy/reference/stats.html#probability-distributions)
```
#crear una muestra (de 1000 valores entre 0 y 10)

stats.<distribucion>.rvs(size=1000, loc=0, scale=10)
``` 
```
#calcular la probabilidad acumulada de la distribución hasta el valor x

stats.<distribucion>.cdf(x, loc=0, scale=10)
``` 
```
#calcular el valor de la distribución que corresponde a la probabilidad acumulada q

stats.<distribucion>.ppf(q, loc=0, scale=10)
``` 
```
#calcular la probabilidad de la distribución en el valor x

stats.<distribucion>.pdf(x, loc=0, scale=10)
``` 

6. Info Material
- [Más explicaciónes y cursos de Cienca de Datos](https://cienciadedatos.net)
- [Ajuste de distribuciones: hacer pruebas de qué distribución es la que mejor se ajusta a los datos según su AIC](https://www.cienciadedatos.net/documentos/pystats01-ajuste-distribuciones-python.html)