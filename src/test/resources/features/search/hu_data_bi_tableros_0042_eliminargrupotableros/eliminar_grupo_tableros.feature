# language: es

Característica: Eliminar grupo de tableros

  Como usuario Administrador cliente
  Quiero eliminar un grupos de tableros existente
  Para realizar la gestión de grupos de tableros en el portal


  Escenario: Eliminar grupo
    Dado que el usuario requiere eliminar un grupo de tableros existentes
    Cuando el usuario selecciona la opción “Eliminar” sobre el grupo de tableros que desea eliminar en el Formulario Gestión de Grupo de tableros (descrito en la HU_DATA & BI_TABLEROS_0038_Gestionar Grupo de tableros)
    Entonces el sistema muestra mensaje de confirmación para la eliminación del grupo de tableros, validando que no existan usuarios asignados al Grupo de Tableros, si existen usuarios asociados no permite la eliminación del grupo de tableros y muestra mensaje informativo con la existencia de usuarios asociados.

  Escenario: Cancelar elimincación de grupo de tableros
    Dado que el usuario requiere cancelar la eliminación del Grupo de tableros
    Cuando el usuario selecciona la opción “Cancelar” del mensaje de confirmación de eliminación del grupo de tableros
    Entonces el sistema no realiza ninguna eliminación del Grupo de Tableros y cierra el mensaje de confirmación.

  Escenario: Auditoria elimincación de grupo de tableros
    Dado que se requiere guardar la auditoria de eliminación de un Grupo de Tableros
    Cuando el usuario elimina un Grupo de tableros existente
    Entonces el sistema identifica y almacena dos datos definidos en “Datos Auditoria”
