# language: es

Característica: Gestionar Documentación del Sitio

    Como usuario Administrador Interno
    Quiero editar o actualizar la documentación del portal
    Para realizar modificaciones o actualizaciones de información para el usuario en el portal y realizar la descarga de reporte de la documentación


    Escenario: Visualizar formulario Documentación del sitio
        Dado que el usuario requiere identificar y visualizar los documentos existentes
        Cuando el usuario selecciona la opción “Editor de Documentación”
        Entonces el sistema muestra el formulario “Documentación del sitio” con los datos y las validaciones definidas en “Formulario Documentación del Sitio”, mostrando la tabla el historial de la documentación creada para el sitio en orden ascendente de creación por grupos de a 10 y con paginación.

    Escenario: Visualizar ventana Editor de Documentación
        Dado que el usuario requiere cargar un nuevo documento al portal
        Cuando selecciona la opción “Agregar Documento” del formulario “Documentación del sitio”
        Entonces el sistema muestra la ventana emergente para agregar documentos con los datos y validaciones definidas en “Ventana Editor Documentación”.

    Escenario: Agregar Documento Exitosamente
        Dado que el usuario requiere agregar un nuevo documento de forma exitosa
        Cuando el usuario realiza el registro de los datos del nuevo documento y selecciona la opción “Guardar” del formulario “Ventana Editor Documentación”
        Entonces el sistema valida la información y solicita confirmación por medio de mensaje de confirmación de creación de nuevo documento con las opciones “Cancelar” y “Confirmar”

    Escenario: Activar o Inactivar Documento
        Dado que se requiere Activar o Inactivar documentación existente
        Cuando el usuario selecciona la opción “Activar/Inactivar” sobre el documento que desea
        Entonces el sistema realiza el cambio de estado solicitando confirmación por medio del mensaje de confirmación de activación o inactivación con las opciones “Cancelar” y “Confirmar”

    Escenario: Cancelar o confirmar carga o edición de documentos
        Dado que el usuario requiere confirmar o cancelar el cambio de estado o creación de un documento
        Cuando el usuario registra o edita datos de un documento y selecciona la opción “Confirmar” del mensaje de confirmación
        Entonces el sistema realiza la actualización de la información y cierra el mensaje, por el contrario, si el usuario seleccionó la opción “Cancelar”, el sistema no realiza ninguna actualización de información y cierra el mensaje.

    Escenario: Generar Reporte
        Dado que el usuario requiere descargar el resumen con el historial de la documentación del portal
        Cuando el usuario selecciona la opción “Descargar Reporte”
        Entonces el sistema realiza la descarga del “Reporte Documentación Portal” con la información de la documentación cargada y con los datos definidos en “Formulario Documentación del Sitio” en formato Excel.

    Escenario: Auditoria documentación
        Dado que se requiere guardar la auditoria de creación, activación o inactivación de un documento
        Cuando el usuario edita o actualiza un documento
        Entonces el sistema identifica y almacena dos datos definidos en “Datos Auditoria”
