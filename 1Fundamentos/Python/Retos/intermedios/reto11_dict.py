# Archivo reto11.py

### Dicionarios
global nestedClients
global client
nestedClients ={}
client ={}
n = id(client)

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
  option = int(input("Introduce el número adecuado: "))
  while (option): 
    if (option == 1):
      addClient()
      break
    elif (option == 2):
      deleteClient()
      break
    elif (option == 3):
      showClient()
    elif (option == 4):
      listAll()
      break
    elif (option == 5):
      showVIP()
    elif (option == 6):
      print('Hasta luego!')
      exit()
    else: 
      option = int(input("Introduce sólo un número de 1 a 6: "))

### (1) Añadir un cliente
def addClient():
#  global nestedClients
#  global client
  client = {"NIF":input("NIF: "),  
            "name":input("Nombre: "), 
            "phone":input("Teléfono: "), 
            "email":input("Email: "), 
            "vip":vip()}
  n = id(client)
  nestedClients[n] = client
  retoA11()

### (2) Eliminar cliente por NIF
def deleteClient():
  global nestedClients
  global client
  xNif = input("Eliminalo por NIF: ")
  for dict, info in list(nestedClients.items()):
    if info["NIF"] == xNif:
      del nestedClients[dict]
      print(f'''Cliente eliminado con éxito, lista de clientes actualizada:
  {nestedClients}''')
    else: print("No hay ningún cliente con este NIF.")
  retoA11()

### (3) Mostrar Cliente por NIF
def showClient():
#  global nestedClients
#  global client
  sNif = input("Muestralo por NIF: ")
  for dict, info in nestedClients.items():
    if info["NIF"] == sNif:
      print(dict, info)
      break
    else: print("No hay ningún cliente con este NIF.")
  retoA11()

### (4) Listar TODOS los clientes
def listAll():
  for dict, info in nestedClients.items():
      print(dict, info)   
  retoA11()

### (5) Mostrar ÚNICAMENTE los clientes preferentes
def showVIP():
  for dict, info in nestedClients.items():
    if info["vip"] == True:
      print(dict, info)
    else: print("No hay clientes preferentes")
  retoA11()