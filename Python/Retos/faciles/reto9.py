# Archivo reto9.py 
## decir si un año es bisiesto o no
def reto9():
    anio = int(input('Introduce un año: '))
    while True:
        if (anio%4!=0) or (anio%4==0 and anio%100==0 and anio%400!=0):
            anio = int(input('''El año no es bisiesto.
            Introduce otro año:'''))
        else: 
            print('El año es bisiesto.')
            return True