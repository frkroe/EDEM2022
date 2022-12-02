# Python Reto Facil 13
## funciones que calculen el área de un triángulo y de un círculo

def areaTri(altura:float, base:float) -> float:
    return (altura*base)/2  

def areaCir(radio:float) -> float:
    from math import pi
    return pi * (radio**2) 