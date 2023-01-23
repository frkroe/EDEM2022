### Clase de 29/10/2022 ESteban Chiner
# OPEN DATA
1. Introducción
**open data** 
= datos públicos/ abiertos para todo el mundo sin restricciones, compartados para investigaciones etc.

**4 tipos de open datos (pueden colapsarse))**
- del gobierno (p.ej. de VLC, European Data Portal, data.gov, ...)
- éstatisticas (p.ej. INE, world bank open data, Statista, eurostat...)
- datasets públicos (p.ej. Kaggle, DataCite, GDELT, datasets en BigQuery..)
- datos commerciales (RRSS: twitter, Reddit, financieros: IEX, Morning Star, ...)

2. Parte técnica
**Formatos de datos**
- CSV ( valores separados por comma)
- JSON (más estructuras con esquema que defina el tipo de datos [str, int, ..])
- XML (parecido al json pero ya no usado mucho, en la forma de <...>)
- otros sobre información geográfica: WMS, GML, KML (para localizar cosas)
- otro de noticias: Atom, RSS (para leer feeds de noticias)
- RDF (formato más sematico de una éstructura de arbol; 1 attributo tiene una serie de attributos, para hacer consultas mucho más estructuradas)

**Entrega/Acceso a los datos**
- descargarlos (no muy útil)
- API rest (llamar a una URL que te devuelva un json; acceso es programable pero hay que pedirlo cada vez)
- tiempo real (connectar y subscribirte a un dataset sin pedir los datos cada vez, vienen en un stream; habitualmente a travé de "websocket")
- feeds 

**Frequencia**
de real-time, a través de diario, mensual, etc. a ad-hoc (obtener datos a petición)

3. Fuentes de datos
**Gobierno**
- de Ajuntament de València: https://valencia.opendatasoft.com/pages/home/
- de España: https://datos.gob.es (con API)
- de la UE: https://data.eurostat.eu/es

**Statistics**
- INE de España: https://ine.es
- Eurostat de la UE: https://ec.europa.eu/eurostat
- World Bank: https://data.worldbank.org
- Gapminder para data cruncing y visualización: https://www.gapminder.org/tools

**Datasets públicos**
- Google Search: https://toolbox.google.com/datasetsearch
- otros: ...

**Datos commerciales**
- hay de todo, p.ej. RRSS
- son de pago, pero a lo mejor tienen una versión gratuita
- IEX Cloud https://iexcloud.io