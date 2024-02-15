# language: es

Característica: Crear usuarios empresa o ot

  Como usuario Administrador Cliente
  Quiero crear nuevos usuarios en el portal
  Para que puedan acceder a las funcionalidades disponibles


  Escenario: Mostrar formulario
    Dado que el usuario Administrador cliente requiere crear nuevos usuarios
    Cuando el usuario selecciona la opción “Agregar Nuevo Usuario” del Formulario Gestión de Usuarios (descrito en la HU_ DATA & BI_TABLEROS_0043_ Gestionar Usuarios Empresa/OT)
    Entonces el sistema muestra formulario “Creación y Edición de Usuarios” con los datos y validaciones definidas en “Formulario Creación y Edición de Usuarios ”.

  Escenario: Crear usuario existosamente
    Dado que se requiere crear un nuevo usuario en sistema
    Cuando el usuario registra la información del usuario de las dos pestañas “Datos Usuario” y “Asociar Grupo” y selecciona la opción “Guardar”
    Entonces el sistema valida los datos de forma correcta mostrando mensaje de confirmación de la creación del nuevo Usuario, guarda la información en sistema y muestra el registro creado en la tabla de usuarios del “Formulario Gestión de Usuarios” (definido en la HU_ DATA & BI_TABLEROS_0043_Gestionar Usuarios Empresa/OT), si encuentra que ya se encuentra creado un Usuario con la misma configuración muestra mensaje informativo de duplicidad sin permitir la creación duplicada.

  Escenario: Agregar o remover grupo
    Dado que el actor requiere agregar o remover uno o más Grupos de Tableros al usuario
    Cuando el actor selecciona alguna de las opciones: Adicionar, Remover, Adicionar Todos o Remover Todos de la pestaña “Asociar Grupo”
    Entonces el sistema adiciona o remueve el Grupo o Grupos de Tableros al usuario que se está creando.

  Escenario: Validación de campos olbigatorios
    Dado que el actor no ingresa información en uno o más campos obligatorios
    Cuando selecciona la opción Guardar
    Entonces el sistema emite el correspondiente mensaje de obligatoriedad de datos.

  Escenario: Cancelar creación de usuarios
    Dado que el usuario requiere cancelar la creación de un Usuario
    Cuando el usuario se encuentra registrando datos del Formulario Creación y Edición de Usuarios y selecciona la opción “Cancelar”
    Entonces el sistema no realiza almacenamiento de datos del usuario y cierra el formulario.

  Escenario: Auditoria
    Dado que se requiere guardar la auditoria de creación de un usuario
    Cuando el usuario crea de un nuevo usuario
    Entonces el sistema identifica y almacena dos datos definidos en “Datos Auditoria
