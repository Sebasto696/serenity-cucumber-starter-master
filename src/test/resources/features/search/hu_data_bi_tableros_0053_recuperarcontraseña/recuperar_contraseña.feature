# language: es

Característica: Recuperar contraseña

  Como usuario
  Quiero Recuperar o cambiar contraseña olvidada
  Para acceder exitosamente al portal


  Escenario: Mostrar formulario Recuperar Contraseña
    Dado que el usuario olvido su contraseña y requiere ingresar al portal
    Cuando el usuario selecciona la opción Recuperar Contraseña de la página de inicio de sesión (descrita en HU_DATA & BI_TABLEROS_0052_Iniciar Sesión)
    Entonces el sistema muestra el Formulario Recuperar Contraseña con los datos y validaciones definidas en “Formulario Recuperar Contraseña”

  Escenario: Solicitar código
    Dado que el usuario requiere realizar el proceso de recuperación de su contraseña
    Cuando el usuario ingresa el dato de Usuario según el tipo de usuario y selecciona la opción Recuperar
    Entonces el sistema valida que exista un registro para el Usuario ingresado y envía Código y Enlace de para restablecimiento de contraseña al correo electrónico que tenga registrado, por el contrario si no encuentra registro con el usuario ingresado muestra el correspondiente mensaje.

  Escenario: Restablecimiento de contraseña
    Dado que el usuario requiere completar de forma exitosa el proceso de recuperación de su contraseña
    Cuando el usuario ingresa la información solicitada según los datos y validaciones definidas en “Formulario Restablecimiento de contraseña” y selecciona la opción “Recuperar”.
    Entonces el sistema realiza las validaciones de consistencia de datos y permite el restablecimiento de contraseña de forma exitosa, mostrando el respectivo mensaje de actualización exitosa de contraseña, por el contrario muestra mensaje de error.

  Escenario: Validación parámetros de contraseña
    Dado que el usuario requiere completar de forma exitosa el proceso de recuperación de su contraseña
    Cuando el usuario ingresa en los datos Nueva contraseña y Repita la contraseña una contraseña que no cumple con los parámetros de seguridad definidos en “Formulario Restablecimiento de contraseña” y selecciona la opción Recuperar
    Entonces el sistema no permite el restablecimiento de contraseña exitoso y muestra mensaje de error con los criterios de una contraseña segura.

