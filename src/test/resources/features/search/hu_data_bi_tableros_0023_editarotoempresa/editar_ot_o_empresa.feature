# language: es

Característica: Editar OT o Empresa

    Como usuario Administrador Interno
    Quiero crear nuevos OT o Empresas en el portal
    Para asociar usuarios administradores a esta nuevas OT o empresas para que realicen su gestión


    Escenario: Mostrar Formulario
        Dado que el usuario requiere editar datos de las OT o Empresas existentes
        Cuando el usuario selecciona la opción “Editar” sobre la OT o Empresa que se desea modificar del “Formulario OT/ Empresa” (descrito en la historia de usuario HU_ DATA & BI_TABLEROS_0021_Gestionar OT o Empresa)
        Entonces el sistema muestra el formulario “Crear o Editar OT / Empresa” con los datos precargados y con validaciones definidas en “Formulario Crear o Editar OT o Empresa”

    Escenario: Editar OT o Empresa exitosamente
        Dado que el usuario requiere editar los datos de un Organismo de Transito o Empresa de forma exitosa
        Cuando el usuario realiza modificación de uno o más datos de la “Pestaña Tipo de Cliente” con el campo y selecciona la opción “Guardar”
        Entonces el sistema valida los datos de forma correcta mostrando mensaje de confirmación de la edición del Organismo de Tránsito o Empresa, guarda la información en sistema y muestra el registro actualizado en la tabla del “formulario OT / Empresa” (descrito en la historia de usuario HU_ DATA & BI_TABLEROS_0021_Gestionar OT o Empresa)

    Escenario: Obligatoriedad de datos
        Dado que el usuario no ingresa información en uno o más campos obligatorios de los formularios
        Cuando selecciona la opción “Guardar”
        Entonces el sistema emite mensaje de obligatoriedad de datos y no almacena la información.

    Escenario: Cancelar edición
        Dado que el usuario requiere cancelar la edición de un OT o Empresa
        Cuando el usuario se encuentra registrando datos del formulario “Crear o Editar OT / Empresa” y selecciona la opción “Cancelar”
        Entonces el sistema no realiza almacenamiento de datos del OT o Empresa y cierra el formulario.

    Escenario: Auditoria
        Dado que se requiere guardar la auditoria de edición de un OT o Empresa
        Cuando el usuario edita los datos de un OT o Empresa
        Entonces el sistema identifica y almacena los datos definidos en “Datos Auditoria”

    Escenario: Duplicidad de registro
        Dado que se requiere evitar el registro duplicado de OT o Empresas
        Cuando el usuario realiza la edición de datos de un OT o Empresa existente y selecciona la opción Guardar
        Entonces el sistema valida los datos y encuentra un OT o Empresa creado con los mismos datos, muestra el correspondiente mensaje informativo de duplicidad y no almacena la información. Los datos que se validan para duplicidad están definidos en el “Formulario Crear o Editar OT o Empresa”
