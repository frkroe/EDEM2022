# Archivo reto16.py
## Restar dos fechas y mostrar el resultado por consola
def reto16():
    from datetime import date
    day1, month1, year1 = [int(x) for x in input("Introduce la primera fecha en el formato dd/mm/yyyy: ").split("/")]
    day2, month2, year2 = [int(x) for x in input("Introduce la segunda fecha en el formato dd/mm/yyyy: ").split("/")]
    fecha1 = date(year1, month1, day1) 
    fecha2 = date(year2, month2, day2)
    print(fecha2-fecha1)