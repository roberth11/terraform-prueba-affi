# terraform-prueba-affi
prueba implementacion terraform

# Ejecutar pipeline

## 1.Clonar Repositorio

* Para iniciar se debe realizar la clonacion del proyecto

## 2.Ingreso Azure DevOps

* Se debe iniciar sesion en la cuenta de Azure y proceder a seleccionar el proyecto clonado.

## 3.Elegir pipeline

* En el menu inicial se debe ingresar a **pipelines**
* En la lista se debe buscar el pipeline que se desea ejecutar en la lista de los pipelines que se listan


# Estructura de carpeta

* Se eligio esta estructura ya que nos brinda una mejor organizacion ya que estructuralmente es mas clara 
y organizada para cada uno de los componentes del proyecto,tambien nos ayuda a poder realizar mantenimiento de una manera 
mas facil que el codigo esta modularizado y se puede reutilizar.
Nos ayuda a poder reutilziar sus modulos y plantillas en distintos proyecto
  
## 1.infraestructura

* En esta carpeta se encuentra todos los archivos de configuracion de terraform donde se definen la infraestructura 
en azure

### main.tf

* En este archivo se define los recursos para terrafom y este es el archivo principal

### variables.tf

* Este archivo es el encargado de tener las variables que se van a utilizar en el archivo 'main.tf' ya que esto nos
ayudara a parametrizar y reutilizar dichas variables.

## 2.plantillas

* En esta carpeta se contiene todos los archivos YML que se encargan de definir cada uno de los pasos del pipeline.

### compilar-componente.yml

* El archivo se encarga de empaquetar artefactos y subirlos al blobstorage

### implementar_terraform.yml

* La plantilla se encarga de aplicar los cambios a terraform

### validar_terraform.yml

* Esta plantilla es la encargada de validar cada una de las configuraciones de terraform

## sh

* Esta carpeta se encarga de guardar los script necesesarios para realizar alguna tarea especifica como 
subir o ejecutar el componente

# index.html

* Componente estatico que se va subir al blob Storage 

# pipelines-azure.yml

* El archivo se encarga de definir el pipeline en Azure
