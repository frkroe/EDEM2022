# Archivo reto13.py
## funciones que calcule el área de un triángulo y de un círculo
def areaTri(altura:float, base:float):
    print(f"área de un triángulo: {'{:.2f}'.format((altura*base)/2)}")
    return areaTri
  
def areaCir(radio:float):
    from math import pi
    print(f"área de un círculo: {'{:.2f}'.format(pi * (radio**2))}")
    return pi * (radio**2)