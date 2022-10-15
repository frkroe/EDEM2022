# Archivo reto2.py
## mostrar números impares
def reto2():
  numero_inicial = 2
  numero_final = 8
  miRango = range(numero_inicial, numero_final, 1)
  print(*miRango)
  impares = []

  for i in miRango:
    if i % 2 != 0:
      impares.append(i)
  print(impares)