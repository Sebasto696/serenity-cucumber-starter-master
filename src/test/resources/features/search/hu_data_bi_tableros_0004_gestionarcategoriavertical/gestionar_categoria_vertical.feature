# language: es

Característica: Administrador Interno - Gestionar Categorías de Verticales

  Como usuario Administrador Interno
  Quiero realizar la gestión de las categorías por vertical
  Para configurar la paramétrica completa de verticales en el portal


  Escenario: Agregar Categoría
    Dado que se requiere agregar una categoría a la vertical
    Cuando el usuario se encuentra creando una nueva Vertical, ingresa el dato en el campo “Categoría” y selecciona la opción “Agregar”
    Entonces el sistema valida que no exista la categoría y muestra el dato en el campo “Categorías Vertical”, por el contrario, si encuentra que ya existe la categoría, muestra un mensaje informativo de duplicidad de categoría.

    #Ejemplo
    #Dado que se requiere agregar una categoría a la vertical
    #Cuando el usuario Administrador Interno se encuentra creando una nueva
      # Vertical e ingresa el dato en el campo "Categoría" y selecciona la opción "Agregar"
    #Entonces el sistema valida que no exista la categoría
    #Y muestra el dato ingresado en el campo "Categorías Vertical"

  #Ejemplo
    #Dado que se requiere agregar una categoría a la vertical
    #Cuando el usuario Administrador Interno se encuentra creando una nueva
      # Vertical e ingresa el dato en el campo "Categoría" una categoria existente y selecciona la opción "Agregar"
   # Entonces el sistema muestra un mensaje informativo de duplicidad de
     # categoría
    #Y no agrega la categoría duplicada al campo "Categorías Vertical"



  Escenario: Editar Categoría
    Dado que se requiere editar una categoría de una vertical
    Cuando el usuario selecciona la opción “Editar” sobre la categoría que desea editar
    Entonces el sistema habilita el campo para edición de información y habilita la opción “Guardar” para la categoría.


  Escenario: Actualizar categoría exitosamente
    Dado que se requiere actualizar una categoría de una vertical de forma exitosa
    Cuando el usuario realiza la edición del dato y selecciona la opción “Guardar” sobre la categoría que editó
    Entonces el sistema realiza la actualización del campo validando que no exista duplicidad del dato, por el contrario, si encuentra que ya existe una categoría con el mismo nombre, muestra un mensaje informativo de duplicidad de la categoría.

    #Ejemplo
    #Dado que se requiere actualizar una categoría de una vertical
    #Cuando el usuario Administrador Interno realiza la edición del dato y
      # selecciona la opción "Guardar" sobre la categoría que editó
    #Entonces el sistema valida que no exista duplicidad y realiza la
      # actualización del dato
    #Y muestra un mensaje informativo de la actualización exitosa


  Escenario: Activar/Inactivar Categoría
    Dado que se requiere activar o inactivar una categoría agregada a una vertical
    Cuando el usuario selecciona la opción “Activar/Inactivar”
    Entonces el sistema realiza el cambio de estado de la categoría. Si la categoría se encontraba activa, cambia su estado a inactiva y viceversa.

  Escenario: Auditoria del cambio de estado
    Dado que se requiere guardar la auditoría de la activación o inactivación de una categoría
    Cuando el usuario cambia el estado en una categoría existente
    Entonces el sistema identifica y almacena dos datos definidos en “Datos Auditoria”

    #Ejemplo:
    #Dado que se requiere guardar la auditoría de la activación o
      # inactivación de una categoría
    #Cuando el usuario Administrador Interno cambia el estado en una
      # categoría existente
    #Entonces el sistema identifica y almacena los siguientes datos: Tabla,
    # Id Vertical, Proceso, Fecha creación, Fecha última modificación, Usuario modificador, Dato anterior y Dato nuevo

