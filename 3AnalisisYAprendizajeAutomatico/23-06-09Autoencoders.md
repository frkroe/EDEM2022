### Clase del 09/06/2023 con Manuel Sánchez-Montañés Isla
# Redes Neuronales 3 - Enoders y Decoders

[Enlace a Notebooks y Diapositivas](https://drive.google.com/drive/folders/15NnwoyYxP4GnuLKBCXwyBbc0263hvzr8)

## 1 Autoencoders
Un Autoencoder es un modelo de red neuronal que se entrena para copiar su entrada en su salida. Está compuesto por dos partes: 
- un **encoder** que convierte la entrada en una representación interna y 
- un **decoder** que convierte la representación interna en la salida. 

La representación interna es una codificación de la entrada, que se puede utilizar para la reducción de dimensionalidad, la reconstrucción de la entrada o la detección de anomalías.

![Autoencoder](https://media.licdn.com/dms/image/C4E12AQGcq6YavpwTTg/article-cover_image-shrink_600_2000/0/1633637593999?e=2147483647&v=beta&t=YrRxXMUhoU2v1yODNO-I_H0Dv7X-uW-ADoAUuDrXoJY) 

## 2 Anomalías
### Tipos
- **Anomalía puntual:** Un punto que se sale de la distribución normal de los datos.
- **Anomalía contextual:** Un punto que se sale de la distribución normal de los datos en un contexto determinado.
- **Anomalía colectiva:** Un conjunto de puntos que se sale de la distribución normal de los datos.

![Tipos de anomalías](https://www.oreilly.com/api/v2/epubs/9781789537222/files/assets/7ef914b5-a8e1-49d8-8af5-9725acf25209.png)


## 3 VAEs = Variational Autoencoders
### VAEs
Los VAEs son una familia de modelos de aprendizaje automático que se utilizan para aprender representaciones latentes de datos de alta dimensión. Los VAEs son una versión probabilística de los autoencoders, un tipo de red neuronal no supervisada que se utiliza para el aprendizaje de representaciones eficientes de datos de alta dimensión. 

Se compone de dos redes neuronales: el encoder y el decoder. Un "latent space" en un VAE es una representación de baja dimensión donde los datos de entrada son mapeados para capturar características esenciales (nube de datos).

![VAE](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/VAE_Basic.png/425px-VAE_Basic.png)

## 4 GANs = Generative Adversarial Networks
Gan se usa para generar información nueva. Se compone de dos redes neuronales: el generador y el discriminador. El generador crea información nueva y el discriminador decide si es real o no.

Ejemplo: [This Person Does Not Exist](https://thispersondoesnotexist.com/)

## 5 Diffusiones
Difusiones son un tipo de modelo generativo que se basa en la difusión de un proceso estocástico. Se utiliza para generar imágenes de alta calidad. El objetivo es aprender la distribución de probabilidad de los datos de entrenamiento y generar nuevos datos de la misma distribución.

- Encoder (diffusion phase): Difunde la imagen de entrada en miles de capas, metiendo ruido en cada capa.
- Decoder (reverse phase): Genera una imagen a partir de la imagen difundida

![Difusiones](https://miro.medium.com/v2/resize:fit:1400/1*xc2Y6jwIUhfEGxJLytU1RA.png)

## 6 Aprendizaje por Refuerzo: Multi-armed Bandits
El aprendizaje por refuerzo es un tipo de aprendizaje automático que se utiliza para tomar decisiones secuenciales (p.ej. lo has hecho bien o mal). Hay 3 tipos de Reinforcement Learning:
- Los **multi-armed bandits** son un tipo de aprendizaje por refuerzo que se utiliza para tomar decisiones secuenciales en un entorno incierto.
- **Contextual bandits** son un tipo de aprendizaje por refuerzo que se utiliza para tomar decisiones secuenciales en un entorno incierto, pero con información adicional sobre el entorno.
- **Full RL Problem** es un tipo de aprendizaje por refuerzo que se utiliza para tomar decisiones secuenciales en un entorno incierto, pero con información adicional sobre el entorno y la posibilidad de explorar el entorno.

![Tipos de aprendizaje por refuerzo](https://miro.medium.com/v2/resize:fit:1400/1*3NziBtrANN6UVltplxwaGA.png)