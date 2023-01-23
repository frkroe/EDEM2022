# Python Reto Intermedio 1
## vender discos de música (con discuentos)

def retoI1():
    from datetime import date
    listaDiscos = [{"nombre": "Single Ladies","artista": "Beyoncé","año": 2008,"precio": 5.99,"género": "pop"}, 
    {"nombre": "Umbrella","artista": "Rihanna","año": 2007,"precio": 8.99,"género": "pop"}, 
    {"nombre": "Memories","artista": "David Guetta","año": 2009,"precio": 3.99,"género": "electro"}, 
    {"nombre": "Hot In It","artista": "Tiesto","año": 2022,"precio": 14.99,"género": "electro"}, 
    {"nombre": "X","artista": "Nicky Jam","año": 2019,"precio": 1.99,"género": "reggaeton"},
    {"nombre": "Dura","artista": "Daddy Yankee","año": 2019,"precio": 4.99,"género": "reggaeton"},
    {"nombre": "Bohemian Rhapsody","artista": "Queen","año": 1975,"precio": 7.99,"género": "rock"},
    {"nombre": "You Shook Me All Night Long","artista": "AC/DC","año": 1980,"precio": 4.99,"género": "rock"}, 
    {"nombre": "Breaking the Law","artista": "Judas Priest","año": 1980,"precio": 2.59,"género": "metal"},
    {"nombre": "Evil","artista": "Mercyful Fate","año": 1983,"precio": 2.99,"género": "metal"},
    {"nombre": "Hammer Smashed Face","artista": "Cannibal Corpse","año": 1992,"precio": 5.59,"género": "death metal"},
    {"nombre": "Eaten","artista": "Bloodbath","año": 2004,"precio": 8.59,"género": "death metal"},
    {"nombre": "A Fine Day to Die","artista": "Bathory","año": 1988,"precio": 6.59,"género": "black metal"},
    {"nombre": "Burzum (Dunkelheit)","artista": "Burzum","año": 1996,"precio": 2.59,"género": "black metal"}]

    # Mostrar los discos al usario:
    print("Hola! Están disponibles los siguientes discos:")
    for idx, disco in enumerate(listaDiscos):
        print(f'Num disco {idx+1}: Album: {disco["nombre"]},  Artista: {disco["artista"]},  Precio: {disco["precio"]}€,  Género: {disco["género"]}')
    
    # Seleccionar los discos y añadirlos en el carrito:
    carrito = list()
    precioCarrito:float = 0
    descuento:float = 0
    while True:
        seleccion:int = int(input("Selecciona un disco de la lista (pulsa 0 para terminar la compra): ")) -1
        if seleccion == -1:
            break
        else:
            if listaDiscos[seleccion]["género"] == "electro" or listaDiscos[seleccion]["género"] == "black metal":
                precioCarrito = listaDiscos[seleccion]["precio"] * 0.7
                descuento = listaDiscos[seleccion]["precio"] * 0.3
            else:
                precioCarrito = listaDiscos[seleccion]["precio"]
                descuento = 0
            print(f'''Has elegido el disco {listaDiscos[seleccion]["nombre"]} de {listaDiscos[seleccion]["artista"]}
            Precio: {"{:.2f}".format(precioCarrito)}€, Ahorro: {"{:.2f}".format(descuento)}€''')
            carrito.append({"nombre":listaDiscos[seleccion]["nombre"], "precio":precioCarrito, "descuento":descuento})
    
    # Mostrar el carrito/ discos comprados:
    print("""
    ############################ 
    Gracias por tu compra!
    Discos comprados:""")
    costes = []
    ahorro = []
    for disco in carrito:
        costes.append(disco["precio"])
        ahorro.append(disco["descuento"])
        print(f'    - {disco["nombre"]}')

    # Imprimir la factura: 
    print(f'''    ############################ 
    Fecha de compra: {date.today()}
    Coste final: {round(sum(costes),2)} €.
    Has ahorrado: {round(sum(ahorro),2)} €.
    ############################ 
    ''')