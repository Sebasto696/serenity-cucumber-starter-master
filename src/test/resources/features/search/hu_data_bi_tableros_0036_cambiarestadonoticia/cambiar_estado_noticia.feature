# language: es

Característica: Cambiar estado Noticia


    Como usuario Administrador Interno
    Quiero realizar el cambio de estado de una noticia
    Para realizar activación o inactivación de la visualización de una noticia

    Escenario: Mostrar mensaje de confirmación
        Dado que el usuario requiere cambiar el estado de visualización de una noticia
        Cuando el usuario selecciona la opción “Activar/Inactivar” sobre la noticia que desea cambiar el estado del Formulario Noticias del sitio (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0032_Gestionar Noticias)
        Entonces el sistema muestra mensaje de confirmación de cambio de estado con las opciones “Cancelar” y “Confirmar”

    Escenario: Cambio de estado exitoso
        Dado que el usuario requiere cambiar el estado de una noticia
        Cuando el usuario selecciona la opción “Confirmar” del mensaje de confirmación de cambio de estado
        Entonces el sistema realiza el cambio de estado de la noticia, actualiza la visualización y el dato estado en la tabla del Formulario Noticias del sitio (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0032_Gestionar Noticias). Si la noticia se encontraba en estado Activo, cambia su estado y visualización a Inactivo y viceversa.

    Escenario: Cancelar cambio de estado
        Dado que el usuario requiere cancelar el cambio de estado de la noticia
        Cuando el usuario selecciona la opción “Cancelar” del mensaje de confirmación de cambio de estado
        Entonces el sistema no realiza cambio de estado y cierra el mensaje de confirmación.

    Escenario: Auditoria del cambio de estado
        Dado que se requiere guardar la auditoria de edición de la noticia
        Cuando el usuario edita el estado de una noticia existente
        Entonces el sistema identifica y almacena dos datos definidos en “Datos Auditoria”
