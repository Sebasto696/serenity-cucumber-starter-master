# language: es

Característica: Ver Opciones Administrador Interno


  Como Administrador Interno
  Quiero visualizar las opciones disponibles
  Para realizar la gestión del portal

  //Ejemplo:
  Dado que el usuario Administrador Interno ingresa al portal con su usuario y contraseña
  Cuando el sistema muestra la pantalla de inicio del Administrador Interno
  Entonces se deben mostrar las opciones de Gestionar Verticales, Gestionar Productos, Gestionar Tableros, Gestionar Clientes y Gestionar Contenido

  //(Escenarios) Criterios de aceptación plasmados en las historias de usuario


  Escenario: Visualizar opciones de gestión disponibles
    Dado que el usuario requiere visualizar las opciones de gestión disponibles
    Cuando el usuario Administrador Interno ingresa al portal con su usuario y contraseña
    Entonces el sistema muestra la pantalla de inicio del Administrador Interno con las opciones disponibles para gestión definidas en “Opciones Administrador Interno” Ver: Prototipo

  Escenario: Visualizar y gestionar Verticales
    Dado que el usuario Administrador Interno requiere visualizar verticales existentes y editar o crear nuevas verticales
    Cuando el usuario ingresa al portal y selecciona la opción “Gestionar Verticales”
    Entonces el sistema ejecuta la HU_DATA & BI_TABLEROS_0002_Gestionar Verticales

  Escenario: Visualizar y gestionar Productos
    Dado que el usuario Administrador Interno requiere visualizar productos existentes y editar o crear nuevos productos
    Cuando el usuario ingresa al portal y selecciona la opción “Gestionar Productos”
    Entonces el sistema ejecuta la HU_DATA & BI_TABLEROS_0007_Gestionar Productos

  Escenario: Visualizar y gestionar Tableros
    Dado que el usuario Administrador Interno requiere visualizar Tableros existentes y editar o crear nuevos Tableros
    Cuando el usuario ingresa al portal y selecciona la opción “Gestionar Tableros”
    Entonces el sistema ejecuta la HU_DATA & BI_TABLEROS_0012_Gestionar Tableros

  Escenario: Visualizar y gestionar Clientes
    Dado que el usuario Administrador Interno requiere visualizar Clientes existentes y editar o crear nuevos Clientes
    Cuando el usuario ingresa al portal y selecciona la opción “Gestionar Clientes”
    Entonces el sistema ejecuta la HU_DATA & BI_TABLEROS_0017_Gestionar Clientes

  Escenario: Realizar la gestión del contenido
    Dado que el usuario Administrador Interno requiere realizar la gestión del contenido
    Cuando el usuario ingresa al portal y selecciona la opción “Gestionar Contenido”
    Entonces el sistema ejecuta la HU_DATA & BI_TABLEROS_0026_Gestionar Contenido
