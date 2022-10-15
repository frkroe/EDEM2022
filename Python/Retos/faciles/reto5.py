# Archivo reto5.py
## pedirle a un usario por consola
def reto5():
  def admin(password: str):
    return (password == "admin")

  while not admin(input('Introduce una contraseña: ')):
    print('ERROR! Intentálo otra vez.')
  print("Bienvenido al programa señor ADMIN")