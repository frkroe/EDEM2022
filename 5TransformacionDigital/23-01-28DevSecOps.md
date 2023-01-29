### clase del 28/01/23 con Nacho Asín
# DevSecOps (con Terraform como su herramienta)

## DevOps
**Definición**: conjunto de prácticas que agrupan el desarrollo de software y las operaciones de TI. Su objetivo es hacer más rápido el ciclo de vida del desarrollo de software y proporcionar una entrega continua de alta calidad. Es díficil de encontrar.

**Características**:
- velocidad
- releases más rapidas
- reliabilidad
- escalable
- mejor coloboración  del equipo (no silos islados)

## DevSecOps
**Definición**: lo mismo como DevOps pero en cada circúlo del ciclo de vida del desarrollo de software metes la seguirdad

![DevOps](https://keepcoding.io/wp-content/uploads/2022/02/13429_ILL_DevOpsLoop-1.webp)

## Pilares del DevOps y DevSecOps
- todo como código (infrastructure, application, configuration, security, policy, ... as code)

## security management con GCP cloud
es necesario obtener GCP credenciales para interactuar con el cloud = eso se llama "service account"

eso archivo json se debe estar privado porque es confindencial, ya que se puede usar la tarjeta de crédito cual es metida en la cuenta de gmail

## CI & CD
**Continous Integration**: integración continua, que es un proceso de automatización para los desarrolladores. El éxito de la CI implica que se diseñen, prueben y combinen los cambios nuevos en el código de una aplicación con regularidad en un repositorio compartido. 

**Continous Delivery**: distribución o la implementación continuas, y se trata de conceptos relacionados que suelen usarse indistintamente. Ambos se refieren a la automatización de las etapas posteriores del proceso, pero a veces se usan por separado para explicar hasta dónde llega la automatización.

## Terraform 
**4 pasos:**
- init: descargar las librerías
- plan: try run = similarlo
- apply: ejecutarlo
- destroy: eliminarlo

## Ejercicio
| Archivo | Uso |
| ---| ---|
| pipeline.yml | Crear, comprobar e implantar en la Cloud Run en GCP: los 3 primeros pasos de Terraform init, plan, apply |
| providers.tf | para conectar nuestro github (secrets) con google como provedor a través de terraform |
|destroy.yml|para eliminar lo del terraform|
|dockerfile|containerization --> dockerfile multistage; platform as code|
|main.go|archivo (tb se puede hacer en otros lenguajes como python) para leer los archivos html y levantar el servidor|
|snake.html| para crear el juego; application as code|
|main.tf|para levantar los elementos de terraform; infrastructure as code|
|variables.tf |definir los 5 variables de antes/ siempre|

