# Archivo reto17.py
## Realizar varias operaciones con tuplas
def reto17():
    tupla = (2, 4, 3, 5, 4, 6, 7, 8, 6, 1)
    ### Encontrar los elementos de 3 a 5:
        ### o te refieres a eso??: print(tupla[2:5])
    elemento = 4
    pos = []
    for count, item in enumerate(tupla):
        if item == elemento:
            pos.append(count)
    print(f"""La 3 se encuentra en la posición [{tupla.index(3)}],
    la 4 en [{pos}] 
    y la 5 en [{tupla.index(5)}]""")
    ### Encontrar los 6 primeros elementos:
    print(tupla[:6])
    ### Muestra la tupla desde el 5 elemento hasta el final:
    print(tupla[4:])
    ### Muestra toda la tupla haciendo uso de [:]:
    print(tupla[:])
    #Muestra todos los elementos desde la posición 2 a la 9 de dos en dos:
    print(tupla[1:9:2])
    #Devuelve la tupla con un salto cada 4 elementos:
    print(tupla[::4])
    #Usa un step negativo para mostrar la tupla desde la posición 9 a la 2:
    print(tupla[8:0:-1])