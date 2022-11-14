# Archivo reto11.py

### Dicionarios
global listaClientes
global client
listaClientes = []
client = {}

### Definición preferente: bool
def vip():
  isTrue = True
  while isTrue:
    isTrue = bool(int(input("Preferente? Cualquier número para sí, 0 para no: ")))
    return isTrue
    
### Bienvenida y Selección y (6) Finalizar programa
def retoA11():
  print('''Hola! Qué quieres hacer? Escoge una de las siguientes opciones:
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
    break
    #exit()
  else: 
    option = int(input("Introduce sólo un número de 1 a 6: "))

### (1) Añadir un cliente
def addClient():
  client = {"NIF":input("NIF: "),  
            "name":input("Nombre: "), 
            "phone":input("Teléfono: "), 
            "email":input("Email: "), 
            "vip":vip()}
  listaClientes.append(client)
  retoA11()

### (2) Eliminar cliente por NIF
def deleteClient():
  xNif = input("Eliminalo por NIF: ")
  for dict in listaClientes:
    if dict["NIF"] == xNif:
      listaClientes.remove(dict)
      print("Cliente eliminado con éxito.")
    else:
      print("No hay ningún cliente con este NIF.")
  retoA11()

### (3) Mostrar Cliente por NIF
def showClient():
  sNif = input("Muestralo por NIF: ")
  for dict in listaClientes:
    if dict["NIF"] == sNif:
      print(f'NIF: {dict["NIF"]}, Nombre: {dict["name"]}, Télefono: {dict["phone"]}, Email: {dict["email"]}, Preferente: {dict["vip"]}')
    else: 
      print("No hay ningún cliente con este NIF.")
  retoA11()

### (4) Listar TODOS los clientes
def listAll():
  for idx, dict in enumerate(listaClientes):
      print(f'Cliente Num {idx+1}: NIF: {dict["NIF"]}, Nombre: {dict["name"]}, Télefono: {dict["phone"]}, Email: {dict["email"]}, Preferente: {dict["vip"]}')  
  retoA11()

### (5) Mostrar ÚNICAMENTE los clientes preferentes
def showVIP():
  for dict in listaClientes:
    if dict["vip"] == True:
      print(f'NIF: {dict["NIF"]}, Nombre: {dict["name"]}, Télefono: {dict["phone"]}, Email: {dict["email"]}, Preferente: {dict["vip"]}')
    else: 
      print("No hay clientes preferentes")
  retoA11()