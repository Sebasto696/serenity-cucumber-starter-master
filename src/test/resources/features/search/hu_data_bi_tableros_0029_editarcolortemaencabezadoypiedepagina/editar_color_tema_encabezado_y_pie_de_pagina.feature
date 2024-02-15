# language: es

Característica: Editar Color Tema Encabezado y Pie de Página

    Como usuario Administrador Interno
    Quiero editar el color del tema del portal
    Para realizar modificaciones o actualizaciones en el portal


    Escenario: Visualizar formulario Color del tema encabezado y pie de pagina
        Dado que el usuario requiere cambiar el color del encabezado y pie de pagina del portal
        Cuando el usuario selecciona la opción “Editor de Color Tema”
        Entonces el sistema muestra el formulario de edición de color del tema encabezado y pie de página con los datos y las validaciones definidas en “Formulario Color del Tema Encabezado y Pie de Página”.

    Escenario: Cambiar Tema Exitosamente
        Dado que el usuario requiere cambiar el color del encabezado y pie de página del portal de forma exitosa
        Cuando el usuario realiza selecciona el color para el encabezado y pie de página del portal y selecciona la opción “Guardar”
        Entonces el sistema valida y actualiza la información solicitando confirmación por medio de mensaje de confirmación de la edición de color del tema con las opciones “Cancelar” y “Confirmar”

    Escenario: Cancelar o confirmar edición tema
        Dado que el usuario requiere confirmar o cancelar la edición o cambio de tema del portal
        Cuando el usuario se encuentra editando el tema y seleccionar la opción “Confirmar”
        Entonces el sistema realiza actualización del color del tema para el encabezado y pie de página y cierra el mensaje, por el contrario si el usuario seleccionó la opción “Cancelar” el sistema no realiza ningún cambio o actualización y cierra el mensaje.

    Escenario: Auditoria edición tema
        Dado que se requiere guardar la auditoria de edición del color del tema del encabezado y pie de pagina
        Cuando el usuario edita el tema del portal
        Entonces el sistema identifica y almacena dos datos definidos en “Datos Auditoria”
