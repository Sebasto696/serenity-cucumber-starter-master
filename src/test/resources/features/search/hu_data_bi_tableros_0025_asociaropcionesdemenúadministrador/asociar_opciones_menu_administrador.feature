# language: es

Característica: Asociar opciones de menu adminsitrador

  Como usuario Administrador Interno
  Quiero realizar la asignación de opciones de menú a administradores de OT o Empresas
  Para habilitarles las opciones de menú para su gestión


  Escenario: Mostrar formulario
    Dado que el usuario requiere asignar opciones de menú a una administrador de una OT o Empresa
    Cuando el usuario selecciona la opción “Siguiente” de la pestaña “Asociar Tableros” del “Formulario Crear o Editar Usuario Administrador” (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0018_Crear Usuario Administrador y en la HU_DATA & BI_TABLEROS_0019_Editar Usuario Administrador)
    Entonces el sistema muestra el formulario de la pestaña “Asociar Menú”

  Escenario: Asignar opciones de menu
    Dado que el usuario requiere asignar opciones de menú a una administrador de una OT o Empresa
    Cuando selecciona una o mas opciones de menú de las opciones habilitadas para asignación en el campo “Opciones disponibles” y selecciona la opción “Guardar”
    Entonces el sistema emite mensaje de obligatoriedad de datos y no almacena la información.

  Escenario: Obligatoriedad de datos
    Dado que el usuario no ingresa información en uno o más campos obligatorios de los formularios
    Cuando selecciona la opción “Guardar”
    Entonces el sistema mensaje de confirmación de la asignación de menú al Usuario Administrador, y guarda la información en sistema retornando al Formulario Usuarios Administradores (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0017_Gestionar Clientes)

  Escenario: Auditoria
    Dado que se requiere guardar la auditoria de creación o edición de la asignación de opciones de menú
    Cuando el usuario realiza o modifica la asignación de opciones de menú
    Entonces el sistema identifica y almacena los datos definidos en “Datos Auditoria”

