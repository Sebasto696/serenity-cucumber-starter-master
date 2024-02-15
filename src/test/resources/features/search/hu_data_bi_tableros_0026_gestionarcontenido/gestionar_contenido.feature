# language: es

Característica: : Gestionar contenido

  Como Usuario Administrador Interno
  Quiero visualizar todas las opciones de gestión del contenido del portal
  Para actualizar noticias, contactos, logo, temas, documentación y comunicados en el portal


  Escenario: Visualizar formulario
    Dado que el usuario requiere visualizar las opciones de gestión de contenido existentes
    Cuando el usuario ingresa al portal y selecciona la opción “Gestionar Contenido”
    Entonces el sistema muestra la pantalla de edición banner por defecto (definida en HU_DATA & BI_TABLEROS_0027_Gestionar Edición de Banner) y el menú de opciones de edición de contenido habilitadas, descritas en “Opciones Gestión de Contenido”.

  Escenario: Seleccionar edicion de banners
    Dado que el usuario requiere gestionar la información de un banner
    Cuando el usuario selecciona la opción “Editor de Banners” del menú de opciones de gestión de contenido
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0027_Gestionar Edición de Banners.

  Escenario: Editar logo portal
    Dado que el usuario requiere editar o añadir un logo para el portal
    Cuando el usuario selecciona la opción “Editor Logo” del menú de opciones de gestión de contenido
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0028_Gestionar Logo Portal

  Escenario: Editar color tema del portal
    Dado que el usuario requiere editar el color de tema del portal
    Cuando el usuario selecciona la opción “Editor de Color Tema” del menú de opciones de gestión de contenido
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0029_Editar Color Tema Encabezado y pie de pagina

  Escenario: Gestionar redes sociales
    Dado que el usuario requiere gestionar redes sociales del portal
    Cuando el usuario selecciona la opción “Editor Redes Sociales” del menú de opciones de gestión de contenido
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0030_Gestionar Redes Sociales

  Escenario: Añadir documentacion
    Dado que el usuario requiere editar o añadir documentación en el portal
    Cuando el usuario selecciona la opción “Editor de Documentación” del menú de opciones de gestión de contenido
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0031_Editar Documentación

  Escenario: Gestionar noticias
    Dado que el usuario requiere editar o añadir noticias en la pantalla principal
    Cuando el usuario selecciona la opción “Editor de Noticias” del menú de opciones de gestión de contenido
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0032_Gestionar Noticias



