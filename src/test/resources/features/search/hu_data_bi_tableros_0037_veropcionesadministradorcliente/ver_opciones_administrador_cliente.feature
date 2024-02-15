# language: es

Característica: Ver opciones administrador cliente

  Como Administrador Cliente
  Quiero visualizar las opciones disponibles
  Para realizar la gestión del portal


  Escenario: Ver opciones de gestión
    Dado que el usuario Administrador Cliente requiere visualizar las opciones de gestión disponibles
    Cuando el usuario ingresa al portal con su usuario y contraseña
    Entonces el sistema muestra la pantalla de inicio del Administrador Cliente con las opciones disponibles para gestión definidas en “Opciones Administrador Cliente”

  Escenario: Gestionar tableros
    Dado que el usuario Administrador Cliente requiere realizar la gestión de Grupo de tableros
    Cuando el usuario ingresa al portal y selecciona la opción “Gestionar Grupo de tableros”
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0038_Gestionar Grupo de tableros

  Escenario: Gestionar usuarios
    Dado que el usuario Administrador Cliente requiere realizar la gestión de sus usuarios
    Cuando el usuario ingresa al portal y selecciona la opción “Gestionar Usuarios”
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0043_Gestionar Usuarios Empresa

  Escenario: Visaulizar productos activos
    Dado que el usuario Administrador Cliente requiere visualizar sus productos activos
    Cuando el usuario ingresa al portal y selecciona la opción “Ver Productos Activos”
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0048_ Ver Portafolio de productos

    Escenario: Gestioanr cuenta de administracion
      Dado que el usuario Administrador Cliente requiere realizar la gestión de la cuenta de administración
      Cuando el usuario ingresa al portal y selecciona la opción “Gestionar Cuenta Administración”
      Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0049_Gestionar Cuenta Administración
