# Reto F13 con ejemplos puestos:
from modules.pythonF13 import areaTri, areaCir

altura = 2.0
base = 3.5

print("""
Reto F14:""")
print(f"""a.Input: altura = {altura}, base = {base}
a.Área de un triángulo: {'{:.2f}'.format(areaTri(altura, base))}""")

radio = 5.2

print(f"""
b.Input: radio = {radio}
b.Área de un círculo: {'{:.2f}'.format(areaCir(radio))}""")