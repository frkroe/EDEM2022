# Python Reto Facil 14
## función que calcule el volumen de un cilindro usando la función del reto13

def retoF14(radio:float, longitud:float) -> float:
    from modules.pythonF13 import areaCir
    area:float = areaCir(radio)
    return area*longitud