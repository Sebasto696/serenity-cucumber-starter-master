# language: es

Característica: Ver detalle de grupo de tableros

  Como usuario Administrador Cliente
  Quiero visualizar el detalle de los Grupo de tableros existentes en el portal para mi organización
  Para visualizar la información completa de un Grupo de tableros


  Escenario: Ver el detalle del grupo
    Dado que el usuario requiere visualizar el detalle de un Grupo de tableros
    Cuando el usuario selecciona la opción “Ver detalle” sobre el Grupo de tableros que desea visualizar del Formulario Gestor de Grupo de tableros (descrito en la historia de usuario HU_ DATA & BI_TABLEROS_0038_ Gestionar Grupo de tableros)
    Entonces el sistema muestra la Ventana Emergente “Detalle Grupo de tableros” con los datos y validaciones definidas en “Formulario Detalle Grupo de tableros ”

  Escenario: Ver usuarios y tableros asociados al grupo de tableros
    Dado que el usuario requiere visualizar todos los Usuarios y Tableros asociados al Grupo de tableros de forma ordenada
    Cuando el usuario selecciona la opción “Ver detalle” sobre el Grupo de tableros que desea visualizar
    Entonces el sistema mostrara las tablas con todos los Usuarios y Tableros asociados al Grupo de tableros en orden de modificación ascendente, mostrando grupos de a 10 y con paginación para cada tabla.

  Escenario: Cerrar detalle grupo de tableros
    Dado que el usuario requiere cerrar la ventana de vista del detalle del Grupo de tableros
    Cuando el usuario selecciona la opción cerrar de la ventana Detalle Grupo de tableros
    Entonces el sistema cierra la ventana emergente y retorna al Formulario Gestor de Grupo de tableros (descrito en la historia de usuario HU_ DATA & BI_TABLEROS_0038_Gestionar Grupo de tableros)
