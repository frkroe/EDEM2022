# The Simpsons
## Pasos (Maggie Level)

"""Imports: """
import requests
import time
import csv

"""Function: convert list of dict to csv"""
def convert(lista, file):
  dict_writer = csv.DictWriter(file, lista[0].keys())
  dict_writer.writeheader()
  dict_writer.writerows(lista)
  file.close()

"""Get Data from API every 30 sec & save it in 3 different lists & .csv files"""
listaGen = []
listaLisa = []
listaHomer = []

def getData(): 
  while True:
    response_API = requests.get('https://thesimpsonsquoteapi.glitch.me/quotes')
    # create json file with only 1st element of list (there are no other existing elements, but api text-file is received as list)
    dataJSON = response_API.json()[0]
    # save in 3 different lists:
    if dataJSON["character"] == "Lisa Simpson":
      listaLisa.append(dataJSON)
      fileL = open(r".\Lisa\lisa.csv", "w")
      convert(listaLisa, fileL)
    elif dataJSON["character"] == "Homer Simpson": 
      listaHomer.append(dataJSON)
      fileH = open(r".\Homer\homer.csv", "w")
      convert(listaHomer, fileH)
    else:
      listaGen.append(dataJSON)
      fileG = open(r".\General\general.csv", "w")
      convert(listaGen, fileG)
    # waiting x seconds for continuing code executing within While-loop 
    time.sleep(30)

getData()