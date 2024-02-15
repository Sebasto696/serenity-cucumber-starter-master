# language: es
Característica: Gestionar Logo Portal

    Como usuario Administrador Interno
    Quiero editar o actualizar el logo del portal
    Para realizar modificaciones o actualizaciones de información en el portal


    Escenario: Visualizar formulario Logos del sitio
        Dado que el usuario requiere identificar y visualizar el historial de logos existentes
        Cuando el usuario selecciona la opción “Editar Logo”
        Entonces el sistema muestra el formulario “Logos del sitio” con los datos y las validaciones definidas en “Formulario Logos del Sitio”.

    Escenario: Visualizar historial
        Dado que el usuario requiere visualizar el historial de logos existentes de forma ordenada
        Cuando el usuario Administrador Interno ingresa al portal y selecciona la opción “Editar Logo”
        Entonces el sistema mostrara en la tabla el historial de logos creados para el sitio en orden de creación, mostrando grupos de a 10 y con paginación.

    Escenario: Visualizar ventana Agregar de Logo
        Dado que el usuario requiere Agregar una nuevo Logo al portal
        Cuando selecciona la opción “Agregar Logo” del formulario “Logos del sitio”
        Entonces el sistema muestra la ventana emergente para agregar logo con los datos y validaciones definidas en “Ventana Agregar Logo”.

    Escenario: Agregar Logo Exitosamente
        Dado que el usuario requiere agregar un nuevo logo de forma exitosa
        Cuando el usuario realiza selecciona de una imagen para el logo del portal con el botón “Añadir logo” y selecciona la opción “Guardar” de la “Ventana Agregar Logo”
        Entonces el sistema valida y actualiza la información solicitando confirmación por medio de mensaje de confirmación de la edición del logo con las opciones “Cancelar” y “Confirmar”

    Escenario: Activar o Inactivar Logo
        Dado que se requiere Activar o Inactivar la visualización de un Logo
        Cuando el usuario selecciona la opción “Activar/Inactivar” sobre el logo que desea
        Entonces el sistema realiza el cambio de estado solicitando confirmación por medio del mensaje de confirmación de activación o inactivación con las opciones “Cancelar” y “Confirmar”

    Escenario: Cancelar edición Logo
        Dado que el usuario requiere confirmar o cancelar la edición y/o cambio de estado de un logo
        Cuando el usuario se encuentra editando datos de un logo y selecciona la opción “Confirmar”
        Entonces el sistema realiza actualización de la información editada del logo y cierra el mensaje, por el contrario si el usuario seleccionó la opción “Cancelar” el sistema no realiza ningún cambio o actualización de información y cierra el mensaje.

    Escenario: Generar Reporte
        Dado que el usuario requiere descargar el resumen con el historial de logos del sitio
        Cuando el usuario selecciona la opción “Descargar Reporte”
        Entonces el sistema realiza la descarga del “Reporte Logos del Sitio” con la información de todos los banners creados y con los datos definidos “Formulario Logos del Sitio”, en formato Excel.

    Escenario: Auditoria logo
        Dado que se requiere guardar la auditoria de edición, activación o inactivación de un logo
        Cuando el usuario edita o actualiza un logo
        Entonces el sistema identifica y almacena dos datos definidos en “Datos Auditoria”
