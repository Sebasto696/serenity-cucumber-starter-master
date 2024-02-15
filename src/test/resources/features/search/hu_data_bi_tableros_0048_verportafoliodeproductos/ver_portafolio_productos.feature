# language: es

Característica: Ver portafolio de productos

  Como Usuario
  Quiero visualizar el portafolio de productos
  Para identificar y visualizar los tableros disponibles según los productos con los que cuento


  Escenario: Visualizar Productos Usuario Admin
    Dado que el usuario Administrador Cliente requiere visualizar las todos los productos disponibles en el portal
    Cuando el usuario ingresa al portal con su usuario y contraseña y selecciona la opción “Ver Portafolio de productos”
    Entonces el sistema muestra la pantalla de portafolio de productos existentes con los datos y validaciones definidas en “Portafolio de Productos”, mostrando los productos disponibles para la OT o Empresa a color y los productos no disponibles en blanco y negro. Ver:

  Escenario: Visualizar Productos Usuarios Persona, OT y Empresa
    Dado que el usuario Persona y/o usuario Empresa/OT requiere visualizar las todos los productos disponibles en el portal
    Cuando el usuario ingresa al portal con su usuario y contraseña
    Entonces el sistema muestra la pantalla de portafolio de productos existentes con los datos y validaciones definidas en “Portafolio de Productos”, mostrando los productos disponibles para la Empresa, OT o persona a color y los productos no disponibles o asociados en blanco y negro Ver:

  Escenario: Producto sin tableros asociados o activos
    Dado que el usuario requiere visualizar las todos los productos disponibles en el portal
    Cuando el usuario selecciona un producto que no tenga asociado al menos un tablero en estado activo
    Entonces el sistema muestra el producto en blanco y negro en la pantalla de portafolio de productos existentes.

  Escenario: Ver tableros por producto
    Dado que el usuario requiere visualizar los tableros de un producto asociado o disponible (a color)
    Cuando el usuario selecciona un producto
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0055_Ver tableros por Producto

  Escenario: Ver información producto no asociado
    Dado que el usuario requiere conocer más información de productos sin tableros asociados o activos o no disponibles para a la Empresa, OT o persona
    Cuando el usuario selecciona uno de estos productos (en blanco y negro)
    Entonces el sistema muestra la Ventana Descripción Producto con los datos y validaciones definidas en “Formulario Mensaje Descripción Producto”.
