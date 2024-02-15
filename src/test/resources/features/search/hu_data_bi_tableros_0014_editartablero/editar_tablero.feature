#language: es
Característica: Editar Tablero

  Como usuario Administrador Interno
  Quiero modificar información de tableros existentes
  Para modificar la paramétrica de los tableros en el portal


  Escenario: Mostrar Formulario
    Dado que el usuario requiere editar tableros
    Cuando el usuario selecciona la opción “Editar” sobre el tablero que desea modificar del Formulario Gestionar Tableros (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0011_Gestionar Tableros)
    Entonces el sistema muestra la ventana emergente “Tablero” con los datos precargados y las validaciones definidas en “Formulario Crear o Editar Tablero”.

    #Ejemplo:
    #Dado que el usuario requiere modificar información de tableros existentes
    #Cuando el usuario Administrador Interno selecciona la opción "Editar" sobre el tablero que desea modificar del Formulario Gestionar Tablero
    #Entonces el sistema muestra Formulario Crear o Editar Tablero con los datos precargados del tablero seleccionado
    #Y el sistema muestra los siguientes campos habilitados para edición: Miniatura del tablero, Nombre del Tablero, Descripción Tablero, Id Tablero, Vertical, Producto, URL, Estado y Vista Publica

  Escenario: Editar Tablero Exitosamente
    Dado que el usuario requiere editar un Tablero exitosamente
    Cuando el usuario realiza la modificación de uno o más datos de la Ventana Emergente “Tablero” y selecciona la opción “Guardar”
    Entonces el sistema valida los datos de forma correcta mostrando mensaje de confirmación de la edición del Tablero, guarda la información del tablero en sistema y muestra el registro actualizado en la tabla del formulario Gestionar Tableros (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0011_Gestionar Tableros)

    #Ejemplo:
    #Dado que el usuario requiere editar un Tablero exitosamente
    #Cuando el usuario Administrador Interno realiza la edición de uno o más datos del Formulario Crear o Editar Tablero y selecciona la opción "Guardar"
    #Entonces el sistema valida que los datos sean correctos mostrando mensaje de confirmación de la edición del Tablero
    #Y guarda la información del Tablero en el sistema
    #Y muestra el registro actualizado en la tabla del formulario "Gestionar Tableros"

    #Ejemplo:
    #Dado que el usuario no ha ingresado información en uno o más campos obligatorios para la edición de un Tablero
    #Cuando el usuario selecciona la opción "Guardar" del Formulario Crear o Editar Tablero
    #Entonces el sistema emite un mensaje de obligatoriedad de datos
    #Y no almacena la información en el sistema

  Escenario: Editar Vista Publica de tablero
    Dado que se requiere editar un nuevo Tablero para vista pública
    Cuando el usuario se encuentra editando un Tablero y selecciona el campo de selección “Vista Publica” y la opción “Guardar”
    Entonces el sistema valida los datos de forma correcta mostrando mensaje de validación de la edición del Tablero para vista pública, donde al confírmalo guarda la información del tablero en sistema.

    #Ejemplo:
    #Dado que el usuario Administrador Interno se encuentra editando un Tablero que no tiene vista pública seleccionada
    #Cuando el usuario selecciona el campo "Vista Pública" y selecciona la opción "Guardar"
    #Entonces el sistema valida los datos de forma correcta y muestra un mensaje de confirmación para la edición del Tablero para asignar Vista Pública
    #Cuando el usuario confirma la edición del tablero
    #Y el sistema guarda la información del Tablero con vista pública en el sistema
    #Y lo habilita para visualización en la Vertical Personas


  Escenario: Obligatoriedad de Datos
    Dado que el usuario no ingresa información en uno o más campos obligatorios
    Cuando selecciona la opción “Guardar”
    Entonces el sistema emite mensaje de obligatoriedad de datos y no almacena la información.

  Escenario: Cancelar Edición
    Dado que el usuario requiere cancelar la edición de un Tablero
    Cuando el usuario se encuentra registrando datos de la Ventana Emergente “Tablero” y selecciona la opción “Cancelar”
    Entonces el sistema no realiza almacenamiento de datos del Tablero y cierra la ventana emergente.

    #Ejemplo:
    #Dado que el usuario está editando un Tablero en el Formulario Crear o Editar Tablero
    #Cuando el usuario Administrador Interno selecciona la opción “Cancelar”
    #Entonces el sistema no realiza almacenamiento de datos del Tablero
    #Y cierra el formulario de edición

    #Ejemplo:
    #Dado que el usuario está editando un Tablero en el Formulario Crear o Editar Tablero y no ha realizado ningún cambio en los datos del Tablero
    #Cuando el usuario Administrador Interno selecciona la opción “Cancelar”
    #Entonces el sistema cierra el formulario de edición

  Escenario: Auditoría
    Dado que se requiere guardar la auditoría de edición del Tablero
    Cuando el usuario edita un Tablero existente
    Entonces el sistema identifica y almacena dos datos definidos en “Datos Auditoria”

    #Ejemplo:
    #Dado que se requiere guardar la auditoría de edición de un Tablero
    #Cuando el usuario Administrador Interno edita uno o mas datos de un Tablero existente
    #Entonces el sistema identifica y almacena los siguientes datos: Tabla, Id Vertical, Id Producto, Id Tablero, Proceso, Fecha creación, Fecha última modificación, Usuario modificador, Dato anterior y Dato nuevo

  Escenario: Duplicidad de Registro Editado
    Dado que se requiere evitar el registro duplicado de tableros
    Cuando el usuario realiza la edición de un Tablero y selecciona la opción Guardar
    Entonces el sistema valida los datos y encuentra un tablero creado con los mismos valores, muestra el correspondiente mensaje informativo de duplicidad y no almacena la información. Los datos que se validan para duplicidad de tableros están definidos en el “Formulario Crear o Editar Tablero”

    #Ejemplo:
    #Dado que se requiere evitar el registro duplicado de Tableros
    #Cuando el usuario Administrador Interno realiza la edición de datos de un Tablero y selecciona la opción "Guardar"
    #Entonces el sistema valida los datos encontrando un Tablero creado con los mismos valores
    #Y muestra el correspondiente mensaje informativo de duplicidad
    #Y no almacena la información del Tablero en el sistema

