# Archivo reto15.py
## Crear lista con números aleatorios y devolver otra lista con sus cuadrados
def reto15():
    from random import sample
    listaAleatoria = sample(range(1,100),10)
    listaQuadrada = []
    for elemento in listaAleatoria:
        listaQuadrada.append(elemento**2)
    print(f"""Lista:{listaAleatoria}
    Sus cuadrados: {listaQuadrada}""")