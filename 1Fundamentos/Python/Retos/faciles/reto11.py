# Archivo reto11.py
## pedir datos por consola en una variable GLOBAL
def reto11():
    global pelicula
    pelicula = {
        "título": input("Introduce el título de la película: "),
        "director": input("Introduce el director de la película: "),
        "year": int(input("Introduce el año de la película: ")),
        "country": input("Introduce el país de la película: ")}
