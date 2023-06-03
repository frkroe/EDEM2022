### Clase del 03 de Junio de 2023 con Joan Vila
# Transformers: Teoría y uso en NLP

## Introducción
**Lenguaje natural:** es el lenguaje que usamos los humanos para comunicarnos. Es un lenguaje ambiguo, no estructurado, etc.

**NLP = Natural Language Processing:** Procesamiento de texto
- engloba todas las técnicas computacionales de análisis y manipulación de lenguaje natural
- con el objetivo de la comprensión o la generación de textos.

**Importancia del texto:**
- cantidad de texto crece exponencialmente
- 80% de los datos son datos de texto no estructurados

**Qué es el lenguaje?**
- es un sistema estructurado de comunicación: caracteres --> palabras --> frases --> ideas
- NLP extrae las ideas del texto y las convierte en datos estructurados (= vectores numéricos) para poder procesarlo

**Tareas del NLP:**
![NLP tasks](https://miro.medium.com/v2/resize:fit:1400/1*pR9nbCcPHwCZnSX5VHrYZA.png)
.

**Flujo de trabajo del NLP:**
![NLP workflow](https://www.linguamatics.com/sites/default/files/inline-images/nlp-machine-learning-workflow_1.jpg)
.

**Preprocesado: división del texto:**
- **Tokenización:** dividir el texto en unidades mínimas de significado (palabras, frases, etc.) que se convierten en números (token IDs)
    - Word Tokenization: divide el texto en palabras usando espacios y signos de puntuación
    - Subword Tokenization: divide el texto en palabras y subpalabras (p.ej. "subword" --> "sub" + "word")
- **Word Embedding:** asigna un vector numérico a cada palabra; palabras similiares producen vectores similares, se basa en los conceptos de:
    - Semántica distribucional: palabras que aparecen en contextos similares tienen significados similares
    - Connotación: el significado de una palabra se puede extraer de su contexto
    ![Word embedding](https://miro.medium.com/v2/resize:fit:1400/1*gcC7b_v7OKWutYN1NAHyMQ.png)

## Modelos DL para el procesamiento de texto
- Entrada: word embeddings del texto (vectores semánticos)
- Salida: vectores de clasificación cuyas dimensiones coinciden con el número de vectores de entrada
- Modelos
    - CNN: Redes Neuronales Convolucionales = convierten cada documento de longitud variable en un vector de n dimensiones
    -![CNN](https://d3i71xaburhd42.cloudfront.net/45f7bf79a377edb5182d48e9ba4108d94173ab4a/3-Figure1-1.png)
    - RNN: Redes Neuronales Recurrentes = utilizan la entrada actual y las anterioes generando una secuencia temporal que re-alimenta el modelo con los mismos pesos siempre; con diferentes arquitecturas:
        - many-to-one: clasificación de texto
        - many-to-many: NER, POS tagging
        - one-to-many: generación de texto, p.ej. descripción de imágenes
        - encoder-decoder (many-to-one & one-to-many): traducción de texto
        - encoder-decoder con mecanismo de atención: mejor traducción de texto, porque tambien se calcular un vector específico para cada palabra de salida en función de
todas las entradas
    - ![RNN](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQsIs6PLItnKp9suJoPjMHjlF-SnuBhgb2OeFfjQ1owmrQkLU8Wsut8wvxIghYy182xIc&usqp=CAU)
.
## Arquitectura del Transformer
**Transformers**: sustituyen las RNNs en el procesamiento de texto por un modelo (encoder-decoder) de capas de atención con FNN (Feedforward Neural Network = red neuronal de propagación hacia adelante) 
- La entrada al modelo es una secuencia de n palabras con d dimensiones (word vector)
- Cada capa tiene una subcapa de atención (de todas a todas las palabras) seguida de una red neuronal FNN densa
- ![Transformers](https://d2l.ai/_images/transformer.svg)
.

**Arquitectura del Transformer:**
- **Encoder:** procesa la entrada y genera una representación de la misma
- **Decoder:** genera la salida a partir de la representación generada por el encoder
- cada parte se puede utilizar por separado según la tarea
    - autoencoder = solo encoder: clasificación de frases/ tokens
    - auto-regresivo = solo decoder: generación de texto
    - sequence-to-sequence = encoder + decoder: traducción de texto, generación de resumens

**Evolución de los Transformers:**
![Evolución de los Transformers](https://miro.medium.com/v2/resize:fit:1400/1*RjK51ir02N5EldyVjdacNA.png)
.

## Aprendizaje en transformers 
Los transformers se pre-enrentan de manera auto-supervisada, es decir, se entrenan con datos no etiquetados. sobre grandes volúmenes de texto. Aprenden con dos tipos de tareas:
- Causal Language Modeling: predecir la siguiente palabra/ frase
- Masked Language Modeling: predecir una palabra enmascarada dentro de una frase

Los modelos pre-entrenados se adaptan (fine tuning) para una tarea concreta de manera supervisada, es decir, se entrenan con datos etiquetados.

## Tokenizado
El tokenizado (tokenization) es el proceso de dividir el texto en sus unidades mínimas de significado semántico (tokens).
Estos tokens se codifican como números (token IDs) que se usan como entrada a los modelos de DL.
- Word tokenization: separa el texto en palabras usando los espacios en blanco.
- Subword level tokenization: no se transforman las palabras más comunes, y descompone las palabras raras en partes (subwords) con un significado.

--> ver el 1° Notebook 

## Modelo BERT
BERT: [Bidirectional Encoder Representations from Transformers](https://arxiv.org/pdf/1810.04805.pdf)
- Utiliza la parte encoder del transformer. 
- BERT resuelve el problema de la unidireccionalidad pre-entrenando un modelo del lenguaje enmascarado.
- Además se pre-entrena el modelo en la tarea de predicción de la siguiente frase.
- BERT utiliza un tokenizado sub-palabra WordPiece (~30k tokens)
- BERT se pre-entrena con dos tareas:
    - Masked Language Modeling: predecir una palabra enmascarada dentro de una frase
    - Next Sentence Prediction: predecir si la segunda frase sigue a la primera

--> ver el 2° Notebook 

## Large Language Models
Son modelos transformer de tipo auto-regresivos entrenados en la tarea del Language Modeling sobre datos masivos de texto. No se adaptan (fine-tuning) a ninguna aplicación específica. Las tareas a realizar se definen mediante prompting.

## Aplicaciones de los transformers

**Clasificación de texto:**
- Objetivo: asignar un texto a una clase determinada. 
- Es un problema supervisado: a partir de un conjunto de textos etiquetados
(clases) el modelo aprende a clasifica
- 3 tipos de clasificación:
    - clasificador binario: 2 clases excluyentes
    - clasificador multiclase: 3 o más clases excluyentes
    - clasificador multietiqueta: 2 o más clases no excluyentes

**Natural Language Inference (NLI):**
- Objetivo: determinar si una frase (hipótesis) es verdadera (entailment) o falsa (contradiction) dado un contexto (premise)
- Es un problema supervisado: a partir de un conjunto de pares de frases etiquetados (entailment, contradiction, neutral) el modelo aprende a clasificar
- Zero-shot classification: clasificación de texto sin necesidad de entrenar el modelo con ejemplos de la clase

**Named Entity Recognition (NER):**
- Objetivo: identificar y clasificar entidades nombradas en el texto en categorías predefinidas (p.ej. personas, organizaciones, lugares, etc.)
- Es un problema supervisado: a partir de un conjunto de textos etiquetados (entidades) el modelo aprende a clasificar
- Se implementa como un problema de clasificación token a token siguiendo el esquema IOB (Inside, Outside, Beginning):
    - I: dentro de una entidad
    - O: fuera de una entidad
    - B: comienzo de una entidad

**Minería de texto:**
- Objetivo: extraer información relevante de un texto
- Es un problema no supervisado: a partir de un conjunto de textos no etiquetados el modelo aprende a extraer información

**Busqueda de texto:**
- Objetivo: identificar un texto que cumple unos criterios de búsqueda específicos
- Es un problema no supervisado: a partir de un conjunto de textos no etiquetados el modelo aprende a identificar los textos que cumplen los criterios de búsqueda
- Tipos: Inforamtion Retrieval (IR), Question Answering (QA)

--> ver el 3° Notebook 
el 4° Notebook es para entrenar nuestro propio modelo para cualquier aplicación que vimos en los notebooks anteriores