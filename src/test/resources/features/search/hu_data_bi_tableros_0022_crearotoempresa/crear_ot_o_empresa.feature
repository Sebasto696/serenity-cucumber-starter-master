# language: es

Característica: Crear OT o Empresa

  Como usuario Administrador Interno
  Quiero crear nuevos OT o Empresas en el portal
  Para asociar usuarios administradores a esta nuevas OT o empresas para que realicen su gestión


  Escenario: Mostrar Formulario
    Dado que el usuario requiere crear nuevas OT o Empresas
    Cuando el usuario selecciona la opción “Crear OT / Empresa” del “Formulario OT/ Empresa” (descrito en la historia de usuario HU_ DATA & BI_TABLEROS_0021_Gestionar OT o Empresa)
    Entonces el sistema muestra el formulario “Crear OT / Empresa” con sus diferentes pestañas y con los datos y validaciones definidas en “Formulario Crear o Editar OT o Empresa”, mostrando por defecto los datos para OT.

    #Ejemplo:
    #Dado que el usuario requiere crear nuevos Organismos de Tránsito
    #Cuando el usuario Administrador Interno selecciona la opción "Crear OT/Empresa" del "Formulario OT / Empresa"
    #Entonces el sistema muestra "Formulario Crear o Editar Usuario OT / Empresa" con los siguientes campos: Logo, Tipo Cliente, Nombre OT, DIVIPO y Estado
    #Y el sistema muestra por defecto en el campo "Tipo Cliente" el dato "OT" y en el formulario los campos para Organismo de Tránsito

    #Ejemplo:
    #Dado que el usuario Administrador Interno está en la pantalla "Crear o Editar Usuario OT / Empresa"
    #Cuando el usuario Administrador Interno selecciona la opción "Empresa" en el campo "Tipo de Cliente"
    #Entonces el sistema muestra Formulario Crear o Editar Usuario OT / Empresa con los siguientes campos: Logo, Tipo Cliente, Nombre Empresa, Tipo Documento, Número Documento y Estado

  Escenario: Crear OT exitosamente
    Dado que el usuario requiere crear un nuevo Organismo de Transito de forma exitosa
    Cuando el usuario realiza el registro de los datos obligatorios de la “Pestaña Tipo de Cliente” con el campo “Tipo Cliente” igual a “OT” y selecciona la opción “Guardar”. Ver: Datos para OT
    Entonces el sistema valida los datos de forma correcta mostrando mensaje de confirmación para la creación del nuevo Organismo de Tránsito, guarda la información en sistema y muestra el nuevo registro en la tabla del “formulario OT / Empresa” (descrito en la historia de usuario HU_ DATA & BI_TABLEROS_021_Gestionar OT o Empresa)

    #Ejemplo:
    #Dado que el usuario Administrador Interno está en la pantalla "Crear o Editar Usuario OT / Empresa" y el campo Tipo Cliente es igual a "OT"
    #Cuando el usuario Administrador Interno realiza el registro de los datos obligatorios del formulario "Crear o Editar Usuario OT / Empresa" y selecciona la opción "Guardar"
    #Entonces el sistema valida los datos de forma correcta mostrando mensaje de confirmación para la creación del nuevo Organismo de Tránsito
    #Y muestra el nuevo registro en la tabla del Formulario "OT / Empresa"

  Escenario: Crear Empresa exitosamente
    Dado que el usuario requiere crear una nueva Empresa de forma exitosa
    Cuando el usuario realiza el registro de los datos obligatorios de la pestaña “Pestaña Tipo de Cliente” con el campo “Tipo Cliente” igual a “EMPRESA” y selecciona la opción “Guardar”. Ver: Datos para EMPRESA
    Entonces el sistema valida los datos de forma correcta mostrando mensaje de confirmación para la creación de la nueva Empresa, guarda la información en sistema y muestra el nuevo registro en la tabla del “formulario OT / Empresa” (descrito en la historia de usuario HU_ DATA & BI_TABLEROS_021_Gestionar OT o Empresa)

    #Ejemplo:
    #Dado que el usuario Administrador Interno está en la pantalla "Crear o Editar Usuario OT / Empresa" y el campo Tipo Cliente es igual a "Empresa"
    #Cuando el usuario Administrador Interno realiza el registro de los datos obligatorios del formulario "Crear o Editar Usuario OT / Empresa" y selecciona la opción "Guardar"
    #Entonces el sistema valida los datos de forma correcta mostrando mensaje de confirmación para la creación de la nueva Empresa
    #Y muestra el nuevo registro en la tabla del Formulario "OT / Empresa"

  Escenario: Obligatoriedad de datos
    Dado que el usuario no ingresa información en uno o más campos obligatorios de los formularios
    Cuando selecciona la opción “Guardar”
    Entonces el sistema emite mensaje de obligatoriedad de datos y no almacena la información.

    #Ejemplo:
    #Dado que el usuario no ha ingresado información en uno o más campos obligatorios para la creación de un Organismo de Tránsito
    #Cuando el usuario Administrador Interno selecciona la opción "Guardar"
    #Entonces el sistema emite un mensaje de obligatoriedad de datos
    #Y no almacena la información en el sistema

  Escenario: Cancelar creación
    Dado que el usuario requiere cancelar la creación del nuevo OT o Empresa
    Cuando el usuario se encuentra registrando datos del formulario “Crear OT / Empresa” y selecciona la opción “Cancelar”
    Entonces el sistema no realiza almacenamiento de datos del OT o Empresa y cierra la ventana emergente.

    #Ejemplo:
    #Dado que el usuario se encuentra registrando datos del “Formulario Crear o Editar Usuario OT / Empresa”
    #Cuando el usuario Administrador Interno selecciona la opción "Cancelar"
    #Entonces el sistema no realiza almacenamiento de datos del Organismo de Transito
    #Y cierra el “Formulario Crear o Editar  OT / Empresa”

  Escenario: Auditoria
    Dado que se requiere guardar la auditoria de creación de un OT o Empresa
    Cuando el usuario crea de un nuevo OT o Empresa
    Entonces el sistema identifica y almacena los datos definidos en “Datos Auditoria”

    #Ejemplo:
    #
  Escenario: Duplicidad de registro
    Dado que se requiere evitar el registro duplicado de OT o Empresas
    Cuando el usuario realiza el registro de un OT o Empresa y selecciona la opción Guardar
    Entonces el sistema valida los datos y encuentra un OT o Empresa creado con los mismos datos, muestra el correspondiente mensaje informativo de duplicidad y no almacena la información. Los datos que se validan para duplicidad están definidos en el “Formulario Crear o Editar OT o Empresa”

    #Ejemplo:
    #
