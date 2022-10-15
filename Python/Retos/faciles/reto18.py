# Archivo reto18.py
## Eliminar un caracter concreto de un str 
def eliminar(str:str, n:int):
    if len(str) > n:
        str = str[0:n:] + str[n+1::]
        print(str)
eliminar('Madrid', 0) #adrid
eliminar('Madrid', 3) #Madid
eliminar('Madrid', 5) #Madri


'''
Otra manera:

def reto18(str:str, n:int):
    listStr = list(str)
    listStr.pop(n)
    listNew = "".join(listStr)
    print(listNew)
print(reto18('Madrid', 0)) #adrid
print(reto18('Madrid', 3)) #Madid
print(reto18('Madrid', 5)) #Madri
reto18("Madrid", 0)
'''