### Clase del 09/06/2023 con Manuel Sánchez-Montañés Isla
# Redes Neuronales 3 - Autoencoders y Anomalías

[Enlace a Notebooks y Diapositivas](https://drive.google.com/drive/folders/15NnwoyYxP4GnuLKBCXwyBbc0263hvzr8)

## Autoencoders
Un Autoencoder es un modelo de red neuronal que se entrena para copiar su entrada en su salida. Está compuesto por dos partes: 
- un **encoder** que convierte la entrada en una representación interna y 
- un **decoder** que convierte la representación interna en la salida. 

La representación interna es una codificación de la entrada, que se puede utilizar para la reducción de dimensionalidad, la reconstrucción de la entrada o la detección de anomalías.

![Autoencoder](https://media.licdn.com/dms/image/C4E12AQGcq6YavpwTTg/article-cover_image-shrink_600_2000/0/1633637593999?e=2147483647&v=beta&t=YrRxXMUhoU2v1yODNO-I_H0Dv7X-uW-ADoAUuDrXoJY) 

## Anomalías
### Tipos
- **Anomalía puntual:** Un punto que se sale de la distribución normal de los datos.
- **Anomalía contextual:** Un punto que se sale de la distribución normal de los datos en un contexto determinado.
- **Anomalía colectiva:** Un conjunto de puntos que se sale de la distribución normal de los datos.

![Tipos de anomalías](https://www.oreilly.com/api/v2/epubs/9781789537222/files/assets/7ef914b5-a8e1-49d8-8af5-9725acf25209.png)


## VAEs = Variational Autoencoders
### VAEs
Los VAEs son una familia de modelos de aprendizaje automático que se utilizan para aprender representaciones latentes de datos de alta dimensión. Los VAEs son una versión probabilística de los autoencoders, un tipo de red neuronal no supervisada que se utiliza para el aprendizaje de representaciones eficientes de datos de alta dimensión. 

Se compone de dos redes neuronales: el encoder y el decoder. Un "latent space" en un VAE es una representación de baja dimensión donde los datos de entrada son mapeados para capturar características esenciales (nube de datos).

![VAE](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/VAE_Basic.png/425px-VAE_Basic.png)

## GANs = Generative Adversarial Networks
Gan se usa para generar información nueva. Se compone de dos redes neuronales: el generador y el discriminador. El generador crea información nueva y el discriminador decide si es real o no.

Ejemplo: [This Person Does Not Exist](https://thispersondoesnotexist.com/)