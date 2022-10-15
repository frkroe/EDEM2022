# Archivo reto8.py 
## decir si un número es primo o no
def reto8():
    numero = int(input('Introduce un número: '))
    for i in range(2,numero):
        if (numero%i == 0) :
            print('El número no es primo.')
            return False   
        else:
            print('El número es primo.')
            return True