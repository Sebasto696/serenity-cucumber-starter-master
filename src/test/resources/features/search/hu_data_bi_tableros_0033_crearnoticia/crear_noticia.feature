# language: es

Característica: Crear Noticia

    Como usuario Administrador Interno
    Quiero crear nuevos noticias
    Para mostrar al usuario información de interés en el portal


    Escenario: Mostrar Formulario
        Dado que el usuario requiere crear nuevas Noticias
        Cuando el usuario selecciona la opción “Agregar Noticia” del Formulario Noticias del sitio (Descrito en HU_DATA & BI_TABLEROS_0032_Gestionar Noticias)
        Entonces el sistema muestra la ventana emergente “Añadir Noticia en Pantalla Principal” con los datos y validaciones definidas en “Formulario Añadir Noticia en Pantalla Principal ”.

    Escenario: Crear Noticia exitosamente
        Dado que el usuario requiere crear una nuevo Noticia exitosamente
        Cuando el usuario realiza el registro de los datos obligatorios de la Ventana Emergente “Añadir Noticia en Pantalla Principal” y selecciona la opción “Guardar”
        Entonces el sistema valida los datos de forma correcta mostrando mensaje de confirmación de la creación de la nueva Noticia, guarda y publica la noticia y muestra el nuevo registro en la tabla del formulario Noticias del sitio (descrito en la historia de usuario HU_ DATA & BI_TABLEROS_0032_Gestionar Noticias)

    Escenario: Obligatoriedad de datos
        Dado que el usuario no ingresa información en uno o más campos obligatorios
        Cuando selecciona la opción “Guardar”
        Entonces el sistema emite mensaje de obligatoriedad de datos y no almacena la información.

    Escenario: Cancelar creación
        Dado que el usuario requiere cancelar la creación de una nueva noticia
        Cuando el usuario se encuentra registrando datos de la Ventana Emergente “Añadir Noticia en Pantalla Principal” y selecciona la opción “Cancelar”
        Entonces el sistema no realiza almacenamiento de datos de la Noticia y cierra la ventana emergente.

    Escenario: Auditoria
        Dado que se requiere guardar la auditoría de creación de la Noticia
        Cuando el usuario crea una nueva Noticia
        Entonces el sistema identifica y almacena dos datos definidos en “Datos Auditoria”
