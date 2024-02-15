# language: es
Característica: Editar Vertical

  Como usuario Administrador Interno SuperAdmin
  Quiero editar datos de verticales existentes
  Para modificar la paramétrica de verticales en el portal


  Escenario: Mostrar Formulario
    Dado que el usuario requiere editar Verticales existentes
    Cuando el usuario selecciona la opción “Editar Vertical” sobre la vertical que desea modificar del Formulario Gestionar Vertical (descrito en la HU_DATA & BI_TABLEROS_0002_Gestionar Verticales)
    Entonces el sistema muestra la Ventana Emergente “Vertical” con los datos precargados de la vertical que se está gestionando y con los datos habilitados para edición según la definición en “Formulario Crear o Editar Vertical”.

    #Ejemplos
    #Dado que el usuario requiere editar Verticales existentes
    #Cuando el usuario Administrador Interno selecciona la opción "Editar
      # Vertical" sobre la vertical que desea modificar del Formulario "Gestionar Vertical"
    #Entonces el sistema muestra el Formulario Crear o Editar Vertical con
      # los datos precargados de la vertical que se está gestionando
    #Y con los siguientes datos habilitados para edición:  Vertical, Id
    # Vertical, Descripción, Estado, Tema botón vertical, Categoría y Categorías Vertical


  Escenario: Editar Vertical exitosamente
    Dado que el usuario requiere editar una nueva vertical exitosamente
    Cuando el usuario realiza la edición de uno o más datos de la Ventana Emergente “Vertical” y selecciona la opción “Guardar”
    Entonces el sistema valida los datos de forma correcta mostrando mensaje de confirmación de la edición de la vertical, guarda la información de la vertical en sistema y el registro actualizado en la tabla del formulario Gestionar Verticales (descrito en la HU_DATA & BI_TABLEROS_0002_Gestionar Verticales).

    #Ejemplo
    #Dado que el usuario requiere editar una Vertical exitosamente
    #Cuando el usuario Administrador Interno realiza la edición de uno o más
      # datos del Formulario Crear o Editar Vertical y selecciona la opción "Guardar"
    #Entonces el sistema valida que los datos sean correctos
    #Y muestra un mensaje de confirmación de la edición de la Vertical
    #Y guarda la información de la Vertical en el sistema
    #Y muestra el registro actualizado en la tabla del formulario "Gestionar
    # Verticales"


  Escenario: Obligatoriedad  de datos
    Dado que el usuario no ingresa información en uno o más campos obligatorios
    Cuando selecciona la opción Guardar
    Entonces el sistema emite mensaje de obligatoriedad de datos y no almacena la información.

    #Ejemplo
    #Dado que el usuario no ha ingresado información en uno o más campos
      # obligatorios para la edición de una Vertical
    #Cuando el usuario Administrador Interno selecciona la opción "Guardar"
      # del Formulario Crear o Editar Vertical
    #Entonces el sistema emite un mensaje de obligatoriedad de datos
    #Y no almacena la información en el sistema


  Escenario: Cancelar edición
    Dado que el usuario requiere cancelar la edición de una Vertical
    Cuando el usuario se encuentra registrando datos de la Ventana Emergente “Vertical” y selecciona la opción “Cancelar”
    Entonces el sistema no realiza almacenamiento de datos de la vertical y cierra la ventana emergente.

    #Ejemplo
    #Dado que el usuario se encuentra registrando datos del Formulario Crear o Editar Vertical
    #Cuando el usuario Administrador Interno selecciona la opción "Cancelar"
    #Entonces el sistema no realiza almacenamiento de datos de la Vertical
    #Y cierra el formulario

  Escenario: Auditoria
    Dado que se requiere guardar la auditoría de edición de la vertical
    Cuando el usuario edita una Vertical existente
    Entonces el sistema identifica y almacena dos datos definidos en “Datos Auditoria”

    #Ejemplo
    #Dado que se requiere guardar la auditoría de edición de la Vertical
    #Cuando el usuario Administrador Interno edita una Vertical existente
    #Entonces el sistema identifica y almacena los siguientes datos: Tabla, Id Vertical, Proceso, Fecha creación, Fecha última modificación, Usuario modificador, Dato anterior  y Dato nuevo

  Escenario: Duplicidad de registro de la vertical editada
    Dado que se requiere evitar el registro duplicado de verticales
    Cuando el usuario realiza la edición de datos de una vertical y selecciona la opción Guardar
    Entonces el sistema valida los datos y encuentra una vertical creada con los mismos valores, muestra el correspondiente mensaje informativo de duplicidad y no almacena la información.

    #Ejemplo
    #Dado que se requiere evitar el registro duplicado de verticales
    #Cuando el usuario Administrador Interno realiza la edición de datos de una vertical y selecciona la opción "Guardar"
    #Entonces el sistema valida los datos
    #Y encuentra una vertical creada con los mismos valores
    #Y muestra el correspondiente mensaje informativo de duplicidad
    #Y no almacena la información en el sistema

  Escenario: Editar Categoría
    Dado que se requiere editar la categoría de la vertical
    Cuando el usuario se encuentra editando una Vertical
    Entonces el sistema ejecuta la historia de usuario “HU_DATA & BI_TABLEROS_0004_Gestionar Categoría Vertical”
