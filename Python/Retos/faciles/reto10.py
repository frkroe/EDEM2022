# Archivo reto10.py
## crear variables desde un diccionario
def reto10():
    dict = {'titulo':'El Más Allá',
          'aka':'E tu vivrai nel terrore - Laldilà',
          'director':'Lucio Fulci', 
          'año':1981, 
          'país':'Italia'}
    ### crear lista de los valores:
    valores =[]
    for llave, valor in dict.items():
        valores.append(valor)
    print(valores)
    ### creaer variables con los nombres: var0, var1, var2, ...
    for n, val in enumerate(valores):
        globals()["var%d"%n] = val
    print(f""" 
    titulo: {var0}
    aka: {var1}
    director: {var2}
    año: {var3}
    país: {var4}""") 
    ### o con la manera manual:
    titulo = dict['titulo']
    aka = dict['aka']
    director = dict['director']
    anio = dict['año']
    pais = dict['país']