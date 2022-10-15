# Archivo reto7.py
## comparar dos inputs sin tener en cuenta mayúsculas y minúsculas
def reto7():
    passwort = input('Introduce una contraseña: ')
    text = input('Introduce un texto: ')
    if (passwort.lower() == text.lower()):
        print('La contraseña y el texto son iguales.')
    else:
        print('La contraseña y el texto no son iguales.')