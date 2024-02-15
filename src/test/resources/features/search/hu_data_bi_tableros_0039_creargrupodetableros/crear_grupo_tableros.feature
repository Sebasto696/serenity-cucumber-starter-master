# language: es

Característica: Crear grupo de tableros

  Como usuario Administrador Cliente
  Quiero crear nuevos Grupo de Tableros en el portal para usuarios del Organismo de Transito o Empresa
  Para realizar la gestión de Grupos de tableros por usuario


  Escenario: Mostrar formulario
    Dado que el usuario Administrador cliente requiere crear nuevos Grupos de Tableros
    Cuando el usuario selecciona la opción “Agregar Grupo de Tableros” del Formulario Gestión de Grupo de Tableros (descrito en la HU_DATA & BI_TABLEROS_0038_Gestionar Grupo de Tableros)
    Entonces el sistema muestra la ventana emergente “Creación o Edición de Grupos de Tableros” con los datos y validaciones definidas en “Formulario Creación o Edición de Grupo de Tableros”.

  Escenario: Agregar tableros a un grupo
    Dado que el actor requiere agregar o remover uno o más tableros a un grupo
    Cuando el actor selecciona la opción: Adicionar, Remover, Adicionar Todos o Remover Todos
    Entonces el sistema adiciona o remueve el tablero al grupo que se esté creando.

  Escenario: Crear un grupo de tableros exitosamente
    Dado que el actor requiere crear un nuevo Grupo de Tableros de forma exitosa
    Cuando el usuario registra la información del grupo de tableros y selecciona la opción “Guardar”
    Entonces el sistema valida los datos de forma correcta mostrando mensaje de confirmación de la creación del nuevo Grupo de Tableros, guarda la información en sistema en estado ACTIVO y muestra el registro creado en la tabla de Grupo de Tableros del “Formulario Gestión de Grupo de Tableros” (definido en la HU_ DATA & BI_TABLEROS_0038_ Gestionar Grupo de Tableros), si encuentra que ya se encuentra creada un Grupo de Tableros con la misma configuración muestra mensaje informativo de duplicidad.

  Escenario: Validacion de campos obligatorios
  Validación de campos obligatorios
    Dado que el actor no ingresa información en uno o más campos obligatorios
    Cuando selecciona la opción Guardar
    Entonces el sistema emite el correspondiente mensaje de obligatoriedad de datos.

  Escenario: Cancelar creacion de un grupo de tableros
    Dado que el usuario requiere cancelar la creación de un Grupo de Tableros
    Cuando el usuario se encuentra registrando datos de la Ventana Emergente Creación o Edición Grupo de Tableros y selecciona la opción “Cancelar”
    Entonces el sistema no realiza almacenamiento de datos del Grupo de Tableros y cierra la ventana emergente.

  Escenario: Auditoria creacion de un grupo de tableros
    Dado que se requiere guardar la auditoria de creación de un Grupo de Tableros
    Cuando el usuario crea de un nuevo Grupo de Tableros
    Entonces el sistema identifica y almacena dos datos definidos en “Datos Auditoria”
