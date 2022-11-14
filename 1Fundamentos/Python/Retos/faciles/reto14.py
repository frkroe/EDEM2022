# Archivo reto14.py
## función que calcule el volumen de un cilindro usando la función del reto13
from reto13 import *
def reto14(radio:float, longitud:float):
  area:float = areaCir(radio)
  print(f"volumen de un cilindro: {'{:.2f}'.format(area*longitud)}")
  return area*longitud