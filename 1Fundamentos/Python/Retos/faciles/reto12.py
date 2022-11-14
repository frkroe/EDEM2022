# Archivo reto12.py
## almacener nombres en una lista y mostrarla por pantalla
def reto12():
    global alumnos 
    alumnos = []
    while True:
        name = input("Introduce el nombre del alumno: ")
        alumnos.append(name)
        askForMore = int(input("Pulsa cualquier número para almacenar otro nombre, pulsa 0 para terminar y mostrar la lista: "))
        if askForMore == 0:
            print("Lista de alumnos:")
            for idx, element in enumerate(sorted(alumnos)):
                print(f"Alumno {idx+1}: {element}")
            return False