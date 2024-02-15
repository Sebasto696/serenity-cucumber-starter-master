# language: es

Característica: Editar grupo de tableros

  Como usuario Administrador Cliente
  Quiero editar Grupo de tableros existentes en el portal para mi organización
  Para realizar la gestión de Grupo de tableros por usuario


  Escenario: Mostrar formulario
    Dado que el usuario Administrador cliente requiere editar un Grupo de tableros
    Cuando el usuario selecciona la opción “Editar” sobre el Grupo de tableros que desea modificar del Formulario Gestión de Grupo de tableros (descrito en la HU_DATA & BI_TABLEROS_0038_Gestionar Grupo de tableros)
    Entonces el sistema muestra la ventana emergente “Creación o Edición Grupo de tableros” con los datos y validaciones definidas en “Formulario Creación o Edición Grupo de tableros”.

  Escenario: Editar grupo de tableros exitosamente
    Dado que el actor requiere editar un Grupo de tableros de forma exitosa
    Cuando el usuario realiza la modificación de uno o más datos de la Ventana Emergente de Creación o Edición Grupo de tableros y selecciona la opción “Guardar”
    Entonces el sistema valida los datos de forma correcta mostrando mensaje de confirmación de la edición del Grupo de tableros, actualiza la información en sistema y muestra el registro editado en la tabla de Grupos de tableros del “Formulario Gestión de Grupo de tableros” (definido en la HU_ DATA & BI_TABLEROS_0038_Gestionar Grupo de tableros), si encuentra que ya se encuentra creado un Grupo de tableros con la misma configuración muestra mensaje informativo de duplicidad.

  Escenario: Validacion de campos obligatorios
    Dado que el actor no registra información en uno o más campos obligatorios
    Cuando selecciona la opción Guardar
    Entonces el sistema emite el correspondiente mensaje de obligatoriedad de datos.

  Escenario: Cancelar edicion de grupo de tableros
    Dado que el usuario requiere cancelar la edición del Grupo de tableros
    Cuando el usuario se encuentra editando datos de la Ventana Emergente Creación o Edición Grupo de tableros y selecciona la opción “Cancelar”
    Entonces el sistema no realiza ninguna actualización ni almacenamiento de datos del Grupo de tableros y cierra la ventana emergente.

  Escenario: Auditoria edicion de grupo de tableros
    Dado que se requiere guardar la auditoria de edición del Grupo de tableros
    Cuando el usuario edita un Grupo de tableros existente
    Entonces el sistema identifica y almacena dos datos definidos en “Datos Auditoria”
