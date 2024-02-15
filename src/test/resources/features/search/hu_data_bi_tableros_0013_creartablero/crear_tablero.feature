# language: es

Característica: Crear Tablero

  Como usuario Administrador Interno
  Quiero crear nuevos tableros
  Para configurar la paramétrica general de los tableros en el portal


  Escenario: Mostrar Formulario
    Dado que el usuario requiere crear nuevos Tableros
    Cuando el usuario selecciona la opción “Crear Tablero” del Formulario Gestionar Tableros (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0012_Gestionar Tableros)
    Entonces el sistema muestra la ventana emergente “Tablero” con los datos y validaciones definidas en “Formulario Crear o Editar Tablero”

    #Ejemplo:
    #Dado que el usuario Administrador Interno ingresa al portal
    #Cuando el usuario selecciona la opción "Gestionar Tableros"
    #Entonces el sistema muestra la pantalla Gestionar Tableros con una tabla de tableros con los siguientes encabezados: Tablero, Vistas, Producto, Vertical, Estado y Acciones

  Escenario: Crear Tablero Exitosamente
    Dado que el usuario requiere crear un nuevo Tablero exitosamente
    Cuando el usuario realiza el registro de los datos obligatorios de la Ventana Emergente “Tablero” y selecciona la opción “Guardar”
    Entonces el sistema valida los datos de forma correcta mostrando mensaje de confirmación de la creación del nuevo Tablero y preguntando si desea crear un nuevo Tablero, guarda la información del tablero en el sistema y muestra el nuevo registro en la tabla del formulario Gestionar Tableros (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0012_Gestionar Tableros)

    #Ejemplo:
    #Dado que el usuario requiere crear un nuevo Tablero
    #Cuando el usuario Administrador Interno realiza el registro de los datos obligatorios del "Formulario Crear o Editar Tablero" y selecciona la opción "Guardar"
    #Entonces el sistema valida los datos de forma correcta mostrando mensaje de confirmación de la creación del nuevo Tablero
    #Y pregunta al usuario si desea crear un nuevo Tablero
    #Y el usuario selecciona la opción "No"
    #Entonces el sistema guarda la información del Tablero creado en el sistema y el nuevo registro en la tabla del Formulario "Gestionar Tableros"

  Escenario: Obligatoriedad de Datos
    Dado que el usuario no ingresa información en uno o más campos obligatorios
    Cuando selecciona la opción “Guardar”
    Entonces el sistema emite mensaje de obligatoriedad de datos y no almacena la información.

    #Ejemplo:
    #Dado que el usuario no ha ingresado información en uno o más campos obligatorios para la creación del Tablero
    #Cuando el usuario Administrador Interno selecciona la opción "Guardar"
    #Entonces el sistema emite un mensaje de obligatoriedad de datos
    #Y no almacena la información en el sistema

  Escenario: Cancelar Creación
    Dado que el usuario requiere cancelar la creación de un nuevo Tablero
    Cuando el usuario se encuentra registrando datos de la Ventana Emergente “Tablero” y selecciona la opción “Cancelar”
    Entonces el sistema no realiza almacenamiento de datos del Tablero y cierra la ventana emergente.

    #Ejemplo:
    #Dado que el usuario se encuentra registrando datos del “Formulario Crear o Editar Tablero”
    #Cuando el usuario Administrador Interno selecciona la opción "Cancelar"
    #Entonces el sistema no realiza almacenamiento de datos del Tablero
    #Y cierra el “Formulario Crear o Editar Tablero”

  Escenario: Vista Pública de Tablero
    Dado que se requiere crear un nuevo Tablero de vista pública exitosamente
    Cuando el usuario se encuentra creando un nuevo Tablero y selecciona el campo de selección “Vista Pública” y la opción “Guardar”
    Entonces el sistema valida los datos de forma correcta mostrando mensaje de validación de la creación del nuevo Tablero con vista pública, donde al confirmarlo guarda la información del tablero en el sistema.

    #Ejemplo:
    #Dado que el usuario Administrador Interno se encuentra creando un nuevo Tablero con todos los datos obligatorios
    #Cuando el usuario selecciona el campo "Vista Pública" y selecciona la opción "Guardar"
    #Entonces el sistema valida los datos de forma correcta y muestra un mensaje de confirmación para la creación del nuevo Tablero con vista pública
    #Cuando el usuario confirma la creación del tablero
    #Y el sistema guarda la información del nuevo Tablero con vista pública en el sistema
    #Y lo habilita para visualización en la Vertical Personas

  Escenario: Auditoría
    Dado que se requiere guardar la auditoría de creación del Tablero
    Cuando el usuario crea de un nuevo Tablero
    Entonces el sistema identifica y almacena dos datos definidos en “Datos Auditoria”

    #Ejemplo:
    #Dado que el usuario Administrador Interno ha creado un nuevo Tablero
    #Cuando el sistema guarda la información del Tablero
    #Entonces el sistema identifica y almacena los siguientes datos: Tabla, Id Vertical, Id Producto, Id Tablero, Proceso, Fecha creación, Fecha última modificación, Usuario modificador, Dato anterior y Dato nuevo

  Escenario: Duplicidad de Registro
    Dado que se requiere evitar el registro duplicado de tableros
    Cuando el usuario realiza el registro de un Tablero y selecciona la opción Guardar
    Entonces el sistema valida los datos y encuentra un tablero creado con los mismos valores, muestra el correspondiente mensaje informativo de duplicidad y no almacena la información. Los datos que se validan para duplicidad de tableros están definidos en el “Formulario Crear o Editar Tablero”

    #Ejemplo:
    #Dado que se requiere evitar el registro duplicado de Tableros
    #Cuando el usuario Administrador Interno realiza el registro de un nuevo Tablero y selecciona la opción "Guardar"
    #Entonces el sistema valida los datos encontrado un Tablero creado con los mismos valores, muesta el correspondiente mensaje informativo de duplicidad
    #Y no almacena la información del Tablero duplicado en el sistema

