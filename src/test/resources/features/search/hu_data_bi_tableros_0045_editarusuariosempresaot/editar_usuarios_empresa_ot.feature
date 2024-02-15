# language: es

Característica: Editar usuarios empresa o ot

  Como usuario Administrador Cliente
  Quiero editar usuarios existentes en el portal de mi Empresa u OT
  Para realizar actualización o corrección de datos de un usuario


  Escenario: Mostrar formulario
    Dado que el usuario Administrador cliente requiere editar un usuario
    Cuando el usuario selecciona la opción “Editar” sobre el usuario que desea modificar del Formulario Gestión de Usuarios (descrito en la HU_ DATA & BI_TABLEROS_0043_ Gestionar Usuarios Empresa/OT)
    Entonces el sistema muestra formulario “Creación y Edición de Usuarios” con los datos precargados y con las validaciones definidas en “Formulario Creación y Edición de Usuarios ”.

  Escenario: Editar Usuario Exitosamente
    Dado que se requiere editar la información de un usuario en sistema
    Cuando el usuario realiza la modificación de uno o más datos de las pestañas “Datos Usuario” y “Asociar Grupo” y selecciona la opción “Guardar”
    Entonces el sistema valida los datos de forma correcta mostrando mensaje de confirmación de la edición del Usuario, guarda la información en sistema y muestra el registro actualizado en la tabla de usuarios del “Formulario Gestión de Usuarios” (definido en la HU_ DATA & BI_TABLEROS_0043_Gestionar Usuarios Empresa/OT), si encuentra que ya se encuentra creado un Usuario con la misma configuración muestra mensaje informativo de duplicidad sin permitir la creación duplicada.

  Escenario: Validación de campos obligatorios
    Dado que el actor no ingresa información en uno o más campos obligatorios
    Cuando selecciona la opción Guardar
    Entonces el sistema emite el correspondiente mensaje de obligatoriedad de datos.

  Escenario: Cancelar edición de datos de Usuario
    Dado que el usuario requiere cancelar la edición de datos de un Usuario
    Cuando el usuario se encuentra editando datos del Formulario Creación y Edición de Usuarios y selecciona la opción “Cancelar”
    Entonces el sistema no realiza almacenamiento de datos del usuario y cierra el formulario.

  Escenario: Auditoria de edición de usuario
    Dado que se requiere guardar la auditoria de edición de un usuario
    Cuando el usuario edita los datos de un usuario
    Entonces el sistema identifica y almacena dos datos definidos en “Datos Auditoria
