# Python Reto Intermedio 11
## Gestionar una cartera de clientes

# Lista de Clientes
global listaClientes
listaClientes = [{"NIF":"123456", "name":"Ana", "phone":"629693", "email":"ana@gmail.com", "vip":False},
{"NIF":"632145", "name":"Pablo", "phone":"613693", "email":"pablo@gmail.com", "vip":False},
{"NIF":"946034", "name":"Laura", "phone":"612093", "email":"laura@gmail.com", "vip":True},
{"NIF":"111111", "name":"Max", "phone":"613619", "email":"max@gmail.com", "vip":False}]

# Definición preferente: bool
def vip():
    isTrue = True
    while isTrue:
        isTrue = bool(int(input("Preferente? Cualquier número para sí, 0 para no: ")))
        return isTrue
    
### (1) Añadir un cliente
def addClient():
  client = {"NIF":input("NIF: "),  
            "name":input("Nombre: "), 
            "phone":input("Teléfono: "), 
            "email":input("Email: "), 
            "vip":vip()}
  listaClientes.append(client)
  retoI11()

### (2) Eliminar cliente por NIF
def deleteClient():
    xNif = input("Eliminalo por NIF: ")
    xNifList = list()
    for dict in listaClientes:
        if dict["NIF"] == xNif:
            xNifList.append(dict)
            listaClientes.remove(dict)
            print("Cliente eliminado con éxito.")
    if len(xNifList) == 0:
        print("No hay ningún cliente con este NIF.")
    retoI11()

### (3) Mostrar Cliente por NIF
def showClient():
    sNif = input("Muestralo por NIF: ")
    nifList = list()
    for dict in listaClientes:
        if dict["NIF"] == sNif:
            nifList.append(dict)
            print(f'NIF: {dict["NIF"]}, Nombre: {dict["name"]}, Télefono: {dict["phone"]}, Email: {dict["email"]}, Preferente: {dict["vip"]}')
    if len(nifList) == 0:
        print("No hay ningún cliente con este NIF.")       
    retoI11()

### (4) Listar TODOS los clientes
def listAll():
    for idx, dict in enumerate(listaClientes):
        print(f'{idx+1}° Cliente = NIF: {dict["NIF"]}, Nombre: {dict["name"]}, Télefono: {dict["phone"]}, Email: {dict["email"]}, Preferente: {dict["vip"]}')  
    retoI11()

### (5) Mostrar ÚNICAMENTE los clientes preferentes
def showVIP():
    vipList = list()
    for idx, dict in enumerate(listaClientes):
        if dict["vip"] == True:
            vipList.append(dict)
            print(f'{idx+1}° Cliente = NIF: {dict["NIF"]}, Nombre: {dict["name"]}, Télefono: {dict["phone"]}, Email: {dict["email"]}, Preferente: {dict["vip"]}')
    if len(vipList) == 0:
        print("No hay clientes preferentes")
    retoI11()

### Bienvenida y Selección y (6) Finalizar programa
def retoI11():
    print('''
Hola! Qué quieres hacer? Escoge una de las siguientes opciones:
(1) Añadir un cliente
(2) Eliminar cliente por NIF
(3) Mostrar Cliente por NIF
(4) Listar TODOS los clientes
(5) Mostrar ÚNICAMENTE los clientes preferentes
(6) Finalizar Programa''')
    while True:
        option = int(input("Introduce el número adecuado: "))
        if (option == 1):
            addClient()
        elif (option == 2):
            deleteClient()
        elif (option == 3):
            showClient()
        elif (option == 4):
            listAll()
        elif (option == 5):
            showVIP()
        elif (option == 6):
            print('Hasta luego!')
            exit()
        else: 
            option = int(input("Introduce sólo un número de 1 a 6: "))