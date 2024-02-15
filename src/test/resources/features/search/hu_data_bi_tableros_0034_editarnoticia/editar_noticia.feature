# language: es

Característica: Editar Noticia

    Como usuario Administrador Interno
    Quiero modificar información de noticias existentes
    Para realizar correcciones o modificaciones a la información publicada en el portal


    Escenario: Mostrar Formulario
        Dado que el usuario requiere editar Noticias
        Cuando el usuario selecciona la opción “Editar” sobre la noticia que desea modificar del Formulario Noticias del sitio (Descrito en HU_DATA & BI_TABLEROS_0032_Gestionar Noticias)
        Entonces el sistema muestra la ventana emergente “Añadir Noticia en Pantalla Principal” con los datos precargados y las validaciones definidas en “Formulario Añadir Noticia en Pantalla Principal”

    Escenario: Editar Noticia exitosamente
        Dado que el usuario requiere editar una Noticia exitosamente
        Cuando el usuario realiza la modificación de uno o más datos de la Ventana Emergente “Añadir Noticia en Pantalla Principal” y selecciona la opción “Guardar”
        Entonces el sistema valida los datos de forma correcta mostrando mensaje de confirmación de la edición de la Noticia, actualiza y publica la información de la noticia y muestra el registro actualizado en la tabla del Formulario Noticias del sitio (Descrito en HU_DATA & BI_TABLEROS_0032_Gestionar Noticias)

    Escenario: Obligatoriedad de datos
        Dado que el usuario no ingresa información en uno o más campos obligatorios
        Cuando selecciona la opción “Guardar”
        Entonces el sistema emite mensaje de obligatoriedad de datos y no almacena la información.

    Escenario: Cancelar edición
        Dado que el usuario requiere cancelar la edición de una noticia
        Cuando el usuario se encuentra registrando datos de la Ventana Emergente “Añadir Noticia en Pantalla Principal” y selecciona la opción “Cancelar”
        Entonces el sistema no realiza almacenamiento de datos para la noticia seleccionada y cierra la ventana emergente.

    Escenario: Auditoria
        Dado que se requiere guardar la auditoria de edición de la noticia
        Cuando el usuario edita una Noticia existente
        Entonces el sistema identifica y almacena dos datos definidos en “Datos Auditoria”
