# language: es

Característica: Crear Vertical

  Como usuario Administrador Interno SuperAdmin
  Quiero crear nuevas verticales
  Para configurar la paramétrica de verticales en el portal


  Escenario: Mostrar Formulario
    Dado que el usuario requiere crear nuevas Verticales
    Cuando el usuario selecciona la opción "Crear Vertical" del Formulario Gestionar Vertical (descrito en la HU_ DATA & BI_TABLEROS_0002_ Gestionar Verticales)
    Entonces el sistema muestra la Ventana Emergente "Vertical" con los datos y validaciones definidas en "Formulario Crear o Editar Vertical".

  Escenario: Crear un Vertical exitosamente
    Dado que el usuario requiere crear una nueva vertical exitosamente
    Cuando el usuario realiza el registro de los datos obligatorios de la Ventana Emergente "Vertical" y selecciona la opción "Guardar"
    Entonces el sistema valida los datos de forma correcta mostrando mensaje de confirmación de la creación de la nueva vertical y preguntando si desea crear una nueva vertical, guarda la información de la vertical en sistema y muestra el nuevo registro en la tabla del formulario Gestionar Verticales (descrito en la HU_ DATA & BI_TABLEROS_0002_Gestionar Verticales).

    #Ejemplo
    #Dado que el usuario Administrador Interno requiere crear nuevas verticales
    #Cuando el usuario selecciona la opción "Crear Vertical" del formulario
      # "Gestionar Vertical"
    #Entonces el sistema muestra el Formulario Crear o Editar Vertical con
    # los siguiente datos: Vertical, Id Vertical, Descripción, Estado, Tema botón vertical, Categoría y Categorías Vertical


  Escenario: Obligatoriedad de datos
    Dado que el usuario no ingresa información en uno o más campos obligatorios
    Cuando selecciona la opción Guardar
    Entonces el sistema emite mensaje de obligatoriedad de datos y no almacena la información.

    #Ejemplo
    #Dado que el usuario Administrador Interno requiere crear una nueva vertical
    #Cuando el usuario Administrador Interno realiza el registro de los datos
      # obligatorios del Formulario Crear o Editar Vertical  y selecciona la opción "Guardar"
    #Entonces el sistema valida los datos de forma correcta
    #Y muestra un mensaje de confirmación de la creación de la nueva vertical
    #Y pregunta al usuario si desea crear otra vertical
    #Y guarda la información de la vertical en el sistema
    #Y muestra el nuevo registro en la tabla del formulario "Gestionar
    # Verticales"

  #Ejemplo
    #Dado que el usuario no ha ingresado información en uno o más campos
      # obligatorios para la creación de una vertical
    #Cuando selecciona la opción "Guardar"
    #Entonces el sistema emite un mensaje de obligatoriedad de datos
    #Y no almacena la información en el sistema


  Escenario: Cancelar creación
    Dado que el usuario requiere cancelar la creación de una nueva Vertical
    Cuando el usuario se encuentra registrando datos de la Ventana Emergente "Vertical" y selecciona la opción "Cancelar"
    Entonces el sistema no realiza almacenamiento de datos de la vertical y cierra la ventana emergente.

    #Ejemplo
    #Dado que el usuario Administrador Interno se encuentra registrando los
      # datos del Formulario Crear o Editar Vertical
    #Cuando el usuario selecciona la opción "Cancelar"
    #Entonces el sistema no realiza almacenamiento de datos de la vertical
    #Y cierra el Formulario Crear o Editar Vertical


  Escenario: Auditoria
    Dado que se requiere guardar la auditoria de creación de la vertical
    Cuando el usuario crea de una nueva Vertical
    Entonces el sistema identifica y almacena dos datos definidos en "Datos Auditoria"

    #Ejemplo
    #Dado que se requiere guardar la auditoría de creación de la vertical
    #Cuando el usuario Administrador Interno crea una nueva Vertical
    #Entonces el sistema identifica y almacena los siguientes datos: Tabla,
    # Id Vertical, Proceso, Fecha creación, Fecha última modificación, Usuario modificador, Dato anterior y Dato nuevo


  Escenario: Duplicidad de registro
    Dado que se requiere evitar el registro duplicado de verticales
    Cuando el usuario realiza el registro de una vertical y selecciona la opción Guardar
    Entonces el sistema valida los datos y encuentra una vertical creada con los mismos valores, muestra el correspondiente mensaje informativo de duplicidad y no almacena la información.

    #Ejemplo
    #Dado que se requiere evitar el registro duplicado de verticales
    #Cuando el usuario Administrador Interno realiza el registro de una
      # vertical y selecciona la opción "Guardar"
    #Entonces el sistema valida los datos encontrado una vertical creada con
      # los mismos valores, muesta el correspondiente mensaje informativo de duplicidad
    #Y no almacena la información de la vertical duplicada en el sistema


  Escenario: Agregar tema botón vertical
    Dado que se requiere agregar un color de tema para el botón de la vertical que se está creando para que sea visible en la página de portafolio de productos
    Cuando el usuario selecciona la opción "Tema Botón Vertical"
    Entonces el sistema permite la selección de color para asignarlo al botón en la página de portafolio de productos para la nueva vertical.

    #Ejemplo

    #Dado que se requiere agregar un color de tema para el botón de la vertical
    #Cuando el usuario Administrador Interno selecciona la opción "Tema Botón
      # Vertical"
    #Entonces el sistema permite la selección de color
    #Y asigna el color seleccionado al botón en la página de portafolio de
    # productos para la nueva vertical


  Escenario: Agregar Categoría
    Dado que se requiere agregar una categoría a la vertical
    Cuando el usuario se encuentra creando una nueva Vertical
    Entonces el sistema ejecuta la historia de usuario "HU_DATA & BI_TABLEROS_0004_Gestionar Categoría Vertical"
