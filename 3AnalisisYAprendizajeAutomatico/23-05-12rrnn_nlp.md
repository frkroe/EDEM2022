### Clase del 12/05/2023 con Felix
# Redes neuronales: Natural Language Processing (NLP)

## Introducción
NLP = Natural Language Processing: Procesamiento de texto


## Pre-procesamiento
- expresiones regulares
   - rangos númericos 
        1. 1 al 9 -> [0-9]
        2. 10 al 99 -> [1-9][0-9]
        3. 30 al 31 -> 3[0-1]
        para indicar límite de una palabra se usa \b (p.ej. \b[0-9]\b)
        para indicar "o" se usa | (p.ej. 1[0-9] | 2[0-9])

    - Ejercicios:
        1. encontrar números desde el 1980 al 1999 = \b 19[89][0-9] \b
        2. encontrar números desde el 1981 al 1999 = \b 19(8[1-9] | 9[0-9]) \b
        3. fecha en formato dd/mm/aaaa y qu no acepte valores imposibles: \b (0[1-9]|[12][0-9]|3[01]) \/ (0[1-9]|1[0-2]) \/ ((19|20)[0-9][0-9]) \b o más corto \b (0[1-9]|[12][0-9]|3[01]) \/ (0[1-9]|1[0-2]) \/ ((19|20)[0-9]{2}) \b
    - en Python:
    ``` 
    import re
    texto = "hola, mi nombre es felix y mi teléfono es 123456789"
    patron = re.compile(r'\b[0-9]{9}\b')	# compila el patrón
    patron.findall(texto)                   # busca el patrón en el texto

    # funciones
    re.match()  # busca al inicio del texto	
    re.search() # busca en todo el texto
    re.findall() # busca todas las ocurrencias
    re.sub() # reemplaza
    re.split() # separa
    re.compile() # compila el patrón
    re.finditer() # busca todas las ocurrencias y devuelve un iterador
    ```
- stop-words = palabras que no aportan información (p.ej. artículos, preposiciones, etc.) hay que limpiar/ eliminarlas
    - Ejemplos
        1. español: de, la, el, los, las, y, o, para, de, etc.
        2. inglés: the, a, an, in, of, to, etc.	
    - en Python:
    ```
    import string
    print(string.punctuation) # muestra los signos de puntuación

    re_pun = re.compile('[%s]' % re.escape(string.punctuation)) # crea un patrón con los signos de puntuación
    texto_sin_puntuacion = re_pun.sub('', texto) # reemplaza los signos de puntuación por nada
    print(texto_sin_puntuacion)

    texto_sin_puntuacion = texto_sin_puntuacion.lower() # para ponerlas en minúsculas
    ```

## Bag of Words (BoW)
- Introducción
    - es una técnica de representación de texto
    - se basa en la frecuencia de las palabras
    - se puede usar para clasificación de texto
    - se puede usar para clustering de texto
- Proceso
    1. limpiar el texto
    2. tokenizar el texto (separar el texto en palabras)
    3. construir el vocabulario (todas las palabras únicas del texto)
    4. codificar el texto (construir una matriz de frecuencias de palabras: fila = documento, columna = palabra, valor = frecuencia de la palabra en el documento)

- Problemas:
    - ninguna deferencia según la longitud de los documentos, es decir que se tratan igual documentos largos que cortos -> problema en clustering, etc.
    - ninguna herramienta si una palabra es más importante que otra
    - imposible comparar documentos  entre sí


## TF-IDF = Term Frequency - Inverse Document Frequency

- Introducción
    - es una técnica de representación de texto
    - se basa en la frecuencia de las palabras
    - se puede usar para clasificación de texto
    - se puede usar para clustering de texto

- Funcionamiento
    - TF = frecuencia de la palabra en el documento
    - IDF = logaritmo del número de documentos más 1 dividido por el número de documentos en los que aparece la palabra más 1
        - formula: IDF = log((1 + num_doc) / (1 + df(palabra))) + 1
    - TF-IDF = TF * IDF
    - es decir que si una palabra aparece en muchos documentos, su IDF será bajo y por lo tanto su TF-IDF será bajo, y si una palabra aparece en pocos documentos, su IDF será alto y por lo tanto su TF-IDF será alto

## Word embedding
- Introducción
    - es una técnica de representación de texto como vectores numéricos de valores continuos en un espacio de alta dimensión
    - se basa en la frecuencia de las palabras
    - se puede usar para codificar el significado de las palabras
    - se puede usar para reducir la dimensionalidad de los datos
- Ejemplos
    - Word2Vec = utiliza una red neuronal con una capa oculta para aprender los vectores de palabras con el objetivo de predecir la probabilidad de las palabras objetivo o del contexto para la clasificación de texto
        - CBOW: entrada = palabras de alrededor (=contexto), salida = palabra objetivo
        - Skip-gram: entrada = palabra objetivo, salida = palabras de alrededor (=contexto)
        - en Python:
        ```
        from tensorflow.keras import Sequential
        from tensorflow.keras.layers import Embedding, GlobalAveragePooling1D, Dense

        model = Sequential()
        model.add(Embedding(input_dim = vocab_size, output_dim = embedding_dim))
        model.add(GlobalAveragePooling1D())
        model.add(Dense(1, activation = 'softmax'))

        model.compile(loss = 'sparse_categorical_crossentropy', optimizer = 'adam', metrics = ['accuracy'])

        history = model.fit(X, y, epochs = 10, batch_size = 256)
        ```
    - GloVe = utiliza una matriz de co-ocurrencia de palabras para aprender los vectores de palabras
    - ELMo = utiliza redes neuronales bidireccionales para aprender los vectores de palabras y ya capturar diferentes sentidos de las palabras