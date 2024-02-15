# language: es

Característica: Mostrar portal publico

  Como usuario
  Quiero ingresar a la página principal del portal
  Para visualizar e interactuar con el contenido y opciones del portal


  Escenario: Mostrar formulario
    Dado que se requiere visualizar el contenido público del portal
    Cuando el usuario ingresa a la página principal del portal
    Entonces el sistema muestra el contenido configurado desde la gestión de contenido (HU_DATA & BI_TABLEROS_0026_Gestionar Contenido), con las opciones definidas en “Formulario Página Principal Web Publica”.

  Escenario: Iniciar sesión o ingresar
    Dado usuario requiere iniciar sesión
    Cuando ingresa a la página principal del portal y selecciona la opción “Inicia sesión”
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0002_Iniciar sesión

  Escenario: Ver Opciones de menú
    Dado usuario requiere visualizar las opciones del menú
    Cuando ingresa a la página principal del portal y selecciona el “Menú”
    Entonces el sistema muestra las opciones de menú disponibles

  Escenario: Realizar Registro
    Dado usuario de tipo persona requiere registrarse en el portal
    Cuando ingresa a la página principal del portal y selecciona la opción de menú “Registro” o desde la opción “Registrarse” incluida en la opción de Inicio de Sesión
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0055_Registrar Usuario Persona

  Escenario: Visualizar Instructivos
    Dado que el usuario requiere visualizar los manuales o instructivos del portal
    Cuando el usuario selecciona la opción “Ayuda” de las opciones del pie de página.
    Entonces el sistema muestra el pdf configurado por el administrador interno desde la funcionalidad de gestión de contenido (descrita en HU_DATA & BI_TABLEROS_0031_Gestionar Documentación)

  Escenario: Ver noticia
    Dado usuario requiere visualizar más información de una noticia de la sección de Carrusel de noticias
    Cuando ingresa a la página principal del portal y selecciona una de las noticia que tenga incluida una opción para ver mas información
    Entonces el sistema direcciona al usuario a la información adicional, según la configuración realizada por el usuario Administrador Interno (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0032_Gestionar Noticias)

