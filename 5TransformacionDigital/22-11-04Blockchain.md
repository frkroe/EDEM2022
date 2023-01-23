### Clase de 04/11/2022

# Conceptos básicos
- bitcoin: moneda virtual decentralizada = cryptocurrencies
- Blockchain = tecnología subyacente usada por cryptos
- DLT: distributed ledger technologies con 3 componentes: blockchain, tangle y hasgraph

# Características de DLT
- repositorio de datos replicados y compartidos y ...
- decentralizado (no autoridad centralizada)
- seguro (por crpytography)
- transparente (datos son públicos)
- immutable (no puedes caambiar operaciones de Blockchain)
- autónomo (usando smart contacts)

# Cryptomoneda
- = moneda digital con tecnicas de encripción para regular la generación de unidades de monedas y para verificar la transferencia de fondos, operando independiente (sin banco central)
- tipos: bitcoin, altcoins, stablecoins, tokens (utility, security)
- se puede comprarlas en "exchanges" (= entidades centrales que te permite comprar, vender y intercambiar, p.ej. binance, coinbase, kraken)


# Tipos de Monedas: Ejemplos
- Fiat: euro, dollar, yen , ...
- Crypto: bitcoin
- Crypto: altcoins: Ethereum (ETH), Stellar Lumens (XLM), and Uniswap (UNI) 
- crypto: stablecoins: Tether (USDT), USD Coin (USDC), Dai (DAI), Binance USD (BUSD), Pax Dollar (USDP), TrueUSD (TUSD), Digix Gold Token (DGX)
- crypto: tokens: utility: Basic Attention Token (BAT), Golem (GNT)
- crypto: tokens: security: Sia Funds, Bcap (Blockchain Capital), Science Blockchain
- digital: CBDCs: sandcoin (bahamas) DCEP (china), digital euro (EU)

# CBDC: Central Bank Digital Currencies
- assets digital por bancos cetrales para hacer pagos y transferencias
- forma digital de la moneda fiat
- características: sustituir el dinero en efectivo, mismo valor, usan DLT, reducen costes y fraudes, traceabilidad

# Como funciona el Blockchain
## conceptos basicos
- Etherum: plataforma computing y sistema operativo open-source, público y distribuido a base de Blockchain con funcionalidad de smart contracts
- Nodes: implementa el protocolo de ethereum ejecutando desde del cliente, transmite y verfifca transacciones
- clave púplica: para encryptar mensajes, que solo se puede desencryptar con la clave privada
- funciones hash: convierte uno o varios elementos de entrada a una función en otro elemento (documentos, imagenes, ... cualquir cosa)
- consenso distribuido: nodos se pueden caer, red se puede ser interrumpida o dividida, mensajes se pueden perder o retrasar o ser out-of-order (byzantines general problem)
- algortimos de conconsenso: 
    - proof of work (p.ej. bitcoin; funcionando pero lento y matando el medioambiente)
    - proof, of stake (p.ej. cardano y pronto ethereum; decentralizado, ataces caros, energia más limpia y eficiente, decentralizado pero no muy bien para escalar, hacer cambios etc)
    - proof of authority (p.ej. hyperledger BESU; escalable y alto rendimiento pero sistema centralizado)
    - y otros (of weight, burn, capacity)

## tipos de blockchain
todos tipos son peer-to-peer
- público: p.ej. bitcoin, ethereum
- privado: permissioned o privado 

# smart contracts: contrato inteligente
- = un programa cuya ejecución (transacciones) es autónoma y transparente, su traza es pública y immutable
- anatomía: solidity version y contract definition (que contenga state variables y funciones)

# Tokenización/ Crypto Tokens
- = tipo especial de moneda virtaul de tokens representado un asset o utilidad, muchas veces usado para recaudar fondos para la venta masiva o para substiuir otras cosas 
- 2 tipos: utility y security para recibir dinero en cambio de una trasaccion)
- token standards para su desarrollo: ERC-20 (hacerlo fungible), ERC-721 (non-fungible; añaden una ID), ...
- beneficios: propiedad decentralziado, no intermedios, más liquidad, traceabilidad, ...