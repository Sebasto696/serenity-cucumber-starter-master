# language: es

Característica: Iniciar sesión

  Como usuario
  Quiero ingresar al portal con credenciales
  Para visualizar e interactuar con las opciones habilitadas


  Escenario: Mostrar opciones de inicio de sesión
    Dado que se requiere ingresar al Portal
    Cuando el usuario selecciona la opción “Ingresar”
    Entonces el sistema despliega las opciones para inicio de sesión según el tipo de usuario: Persona o Empresa/OT.

  Escenario: Opción de inicio Persona
    Dado que el usuario de Persona requiere ingresar al portal
    Cuando el usuario selecciona la opción Persona
    Entonces el sistema muestra el Formulario Inicio de Sesión para Persona con los datos y validaciones definidas en “Formulario Inicio de Sesión Persona”.

  Escenario: Opción inicio Empresa/ OT
    Dado que el usuario Empresa/OT requiere ingresar al portal
    Cuando el usuario selecciona la opción Empresa
    Entonces el sistema muestra el Formulario Inicio de Sesión para Empresa con los datos y validaciones definidas en “Formulario Inicio de Sesión Empresa”.

  Escenario: Validación de datos obligatorios
    Dado que se requiere validar los datos obligatorios para ingreso al portal
    Cuando el usuario no ingresa alguno de los datos obligatorios
    Entonces el sistema no permite el ingreso y muestra mensaje informativo de obligatoriedad de datos.

  Escenario: Datos erróneos
    Dado que se requiere validar los datos de ingreso de los dos tipos de usuario al portal
    Cuando el usuario ingresa datos de Usuario y/o Contraseña erróneos o no registrados
    Entonces el sistema no permite el ingreso y muestra mensaje informativo.

  Escenario: Registrarse
    Dado que el usuario no se encuentra registrado en el portal
    Cuando el usuario selecciona la opción “Registrarse”
    Entonces el sistema ejecuta la HU_DATA & BI_TABLEROS_0054_Registrar Usuario Persona

  Escenario: Recuperar contraseña
    Dado que el usuario olvido su contraseña
    Cuando el usuario selecciona la opción “Recuperar Contraseña”
    Entonces el sistema ejecuta la HU_DATA & BI_TABLEROS_0053_Recuperar contraseña
