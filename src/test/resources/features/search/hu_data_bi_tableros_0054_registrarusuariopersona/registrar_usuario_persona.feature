# language: es

Característica: Registrar usuario persona

  Como usuario
  Quiero realizar el registro exitoso en el portal
  Para acceder a las funcionalidades disponibles.


  Escenario: Mostrar formulario
    Dado que el usuario persona requiere registrarse en el portal
    Cuando el usuario selecciona la opción “Registrarse” de la pantalla de inicio de sesión (descrita en HU_DATA & BI_TABLEROS_0052_Iniciar Sesión)
    Entonces el sistema muestra el Formulario de Registro con los datos y validaciones definidas en “Formulario de Registro”.


  Escenario: Registro exitoso
    Dado que se requiere realizar el registro exitoso del usuario
    Cuando el usuario realiza el llenado de la información del Formulario de Registro y selecciona la opción Crear Cuenta
    Entonces el sistema realiza las validación exitosa de datos, almacena la información es sistema y muestra en mensaje informativo de registro exitoso, por el contrario si no cumple con alguna de las validaciones de datos muestra el mensaje con el correspondiente error.

  Escenario: Validación de campos obligatorios
    Dado que el actor no ingresa información en uno o más campos obligatorios
    Cuando selecciona la opción Crear Cuenta
    Entonces el sistema emite el correspondiente mensaje de obligatoriedad de datos.

  Escenario: Ver Política de Privacidad y Tratamiento de Datos Personales
    Dado que el usuario requiere visualizar y revisar la información de Política de Privacidad y Tratamiento de Datos Personales
    Cuando el usuario selecciona el texto de Política de Privacidad o el de Tratamiento de Datos Personales
    Entonces el sistema redirecciona al usuario a visualizar la información correspondiste.
