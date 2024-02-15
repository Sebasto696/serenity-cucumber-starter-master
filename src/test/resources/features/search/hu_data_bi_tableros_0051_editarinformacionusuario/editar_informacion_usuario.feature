# language: es

Característica: Editar información del usuario

  Como usuario
  Quiero visualizar y editar la información registrada de mi cuenta
  Para realizar actualización de datos y personalización de cuenta


  Escenario: Mostrar Formulario
    Dado que el usuario requiere visualizar la información registrada en su cuenta
    Cuando el usuario ingresa al portal y selecciona la opción “Mi Cuenta”
    Entonces el sistema muestra el Formulario Mi Cuenta con los datos y validaciones definidas en “Formulario Mi Cuenta” con los datos registrados precargados.

  Escenario: Editar datos
    Dado que el usuario requiere editar datos registrados y/o información de la cuenta
    Cuando el usuario ingresa a la opción Formulario Mi Cuenta, edita uno o más datos habilitados para edición según lo definido en “Formulario Mi Cuenta” y selecciona la opción “Guardar”
    Entonces el sistema realiza las validaciones de datos de forma exitosa y actualiza la información modificada en sistema.

  Escenario: Validar datos obligatorios
    Dado que el actor no registra información en uno o más campos obligatorios
    Cuando selecciona la opción Guardar
    Entonces el sistema emite el correspondiente mensaje de obligatoriedad de datos.

  Escenario: Cancelar edición
    Dado que el usuario requiere cancelar la edición de datos de su cuenta
    Cuando el usuario se encuentra editando datos del Formulario Mi Cuenta y selecciona la opción “Cancelar”
    Entonces el sistema no realiza ninguna actualización ni almacenamiento de datos.

  Escenario: Auditoria
    Dado que se requiere guardar la auditoria de edición de datos de la cuenta del usuario
    Cuando el usuario edita un información de la cuenta
    Entonces el sistema identifica y almacena dos datos definidos en “Datos Auditoria”

  Escenario: Cambio de Contraseña
    Dado que el usuario requiere realizar cambio o actualización de su contraseña
    Cuando el usuario selecciona la opción editar en la contraseña
    Entonces el sistema permite realizar el cambio de contraseña realizando las validaciones de los datos según definición en Formulario Mi Cuenta, y notificando al usuario el cambio de contraseña por medio del correo electrónico registrado.
