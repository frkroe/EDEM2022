# Repaso de Python con Martín
## Clases

# Producto
## - iD
## - nombre
## - precio
## - categoría
## - coste
## - color

## IKEA Tienda de muebles

# Armario
# - puertas
# - altura
# - ancho

# Silla
# - patas
# - material

from enum import Enum

# valores constantes siempre en mayúscula, aquí guardados en una clasa con Enum para numerarlos
class Categoria(Enum):
    COCINA = 1
    SALON = 2
    TERRAZA = 3

class Color(Enum):
    BLANCO = 1
    NEGRO = 2
    MARRON = 3

class Producto():
    nombre: str
    precio: float
    categoria: Categoria
    coste: float
    color: Color

    def __init__(self, nombre: str, precio: float, categoria: Categoria, coste: float, color: Color):
        self.nombre = nombre
        self.precio = precio
        self. categoria = categoria
        self.coste = coste
        self.color = color



# poner producto como parametro para añadir sus attributos
class Armario(Producto):
    puertas: int
    altura: float
    ancho: float

    def __init__(self, puertas: int, altura: float, ancho: float):
        self.puertas


