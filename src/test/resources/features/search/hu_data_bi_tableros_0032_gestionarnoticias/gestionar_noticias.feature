# language: es
Característica: Gestionar Noticias

    Como usuario Administrador Interno
    Quiero visualizar, editar o crear nuevas noticias y realizar la descarga del reporte de noticias del sitio
    Para realizar la gestión de noticias en el portal


    Escenario: Visualizar formulario Noticias del sitio
        Dado que el usuario requiere identificar y visualizar el historial de noticias
        Cuando el usuario selecciona la opción “Editor de Noticias”
        Entonces el sistema muestra el formulario “Noticias del sitio” con los datos y las validaciones definidas en “Formulario Noticias del Sitio”

    Escenario: Visualizar historial
        Dado que el usuario requiere visualizar el historial de las noticias existentes de forma ordenada
        Cuando el usuario Administrador Interno ingresa al portal y selecciona la opción “Editor de Noticias”
        Entonces el sistema mostrara la tabla el historial de noticias creadas para el sitio en orden ascendente de creación y por grupos de a 10 y con paginación.

    Escenario: Generar Reporte
        Dado que el usuario requiere descargar el resumen con el historial de noticias creadas en el sistema
        Cuando el usuario selecciona la opción “Descargar Reporte”
        Entonces el sistema realiza la descarga del “Reporte Noticias del Sitio” con la información de todas las noticias creadas y con los datos definidos en el Formulario Noticias del Sitio, en formato Excel.

    Escenario: Crear Noticia
        Dado que el usuario requiere crear nuevas noticias en el portal
        Cuando el usuario selecciona la opción “Agregar Noticia”
        Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0033_Crear Noticia.

    Escenario: Editar Noticia
        Dado que el usuario requiere modificar noticias existentes
        Cuando el usuario realiza selecciona la opción “Editar” sobre la noticia que desea modificar
        Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0034_Editar Noticia

    Escenario: Ver detalle noticia
        Dado que el usuario requiere ver el detalle de una noticia
        Cuando el usuario selecciona la opción “Ver detalle” sobre la noticia que desea visualizar el detalle
        Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0035_Ver Detalle de Noticia.

    Escenario: Cambiar estado
        Dado que el usuario requiere realizar activación o inactivación de una noticia
        Cuando el usuario selecciona la opción “Activar/Inactivar” sobre la noticia que desea cambiar el estado
        Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0036_Cambiar Estado Noticia.
