# language: es

Característica: Gestionar cuenta de administración

  Como usuario Administrador Cliente
  Quiero visualizar y editar la información registrada en la cuenta de administración
  Para realizar actualización de datos y personalización de cuenta


  Escenario: Mostrar Formulario
    Dado que el usuario requiere visualizar la información registrada en la cuenta de administración
    Cuando el usuario Administrador Cliente ingresa al portal y selecciona la opción “Gestionar Cuenta de Administración”
    Entonces el sistema muestra el Formulario Cuenta de Administración con los datos y validaciones definidas en “Formulario Cuenta de Administración” con los datos registrados precargados.

  Escenario: Editar datos
    Dado que el usuario requiere editar datos registrados y/o información de la cuenta registrada
    Cuando el usuario ingresa a la opción Gestionar Cuenta de Administración, edita uno o más datos habilitados para edición según lo definido en “Formulario Cuenta de Administración” y selecciona la opción “Guardar”
    Entonces el sistema realiza las validaciones de datos de forma exitosa y actualiza la información modificada en sistema.

  Escenario: Validar datos obligatorios
    Dado que el actor no registra información en uno o más campos obligatorios
    Cuando selecciona la opción Guardar
    Entonces el sistema emite el correspondiente mensaje de obligatoriedad de datos.

  Escenario: Cancelar edición
    Dado que el usuario requiere cancelar la edición de datos de la cuenta de administración
    Cuando el usuario se encuentra editando datos del Formulario Cuenta de Administración y selecciona la opción “Cancelar”
    Entonces el sistema no realiza ninguna actualización ni almacenamiento de datos.

  Escenario: Auditoria
    Dado que se requiere guardar la auditoria de edición de datos de la cuenta de administración
    Cuando el usuario edita un información de la cuenta
    Entonces el sistema identifica y almacena dos datos definidos en “Datos Auditoria”

  Escenario: Cambio de Contraseña
    Dado que el usuario requiere realizar cambio o actualización de su contraseña
    Cuando el usuario selecciona la opción editar en la contraseña
    Entonces el sistema permite realizar el cambio de contraseña realizando las validaciones de los datos según definición en Formulario Cuenta de Administración, y notificando al usuario el cambio de contraseña por medio del correo electrónico registrado.
