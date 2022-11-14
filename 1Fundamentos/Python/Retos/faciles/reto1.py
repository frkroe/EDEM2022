# Archivo reto1.py
## crear variables y muéstralas
def reto1():
  nombre: str = "Ana"
  apellidos: str = "Bueno Abal"
  edad: int = "35"
  email: str = "ana@bueno.es"
  tel: str = "617617"
  casado: bool = False
  hijos: bool = False
  amigos = ["Paula", "Patricia", "Pablo"]
  pelis = {"peli1": "Titanic", "peli2": "Spiderman"}

  print(f'''
  nombre: {nombre} 
  apellidos: {apellidos} 
  edad: {edad} 
  email: {email}
  teléfono: {tel}
  casado? {casado} 
  con hijos? {hijos} 
  amigos: {amigos}
  pelis: {pelis}
  ''')