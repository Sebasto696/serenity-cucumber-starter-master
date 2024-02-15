# language: es

Característica: Gestionar usuarios empresa o ot

  Como usuario Administrador Cliente
  Quiero visualiza, crear y modificar usuarios en el portal
  Para que puedan acceder a las funcionalidades del portal


  Escenario: Mostrar formulario
    Dado que el usuario requiere visualizar un listado con todos los usuarios creados para su Empresa/OT
    Cuando el usuario ingresa al portal y selecciona la opción “Gestor de Usuarios”
    Entonces el sistema muestra el formulario “Gestor de Usuarios” con los datos y validaciones definidas en “Formulario Gestión de Usuarios” mostrando una tabla con todos los usuarios creados en el sistema en orden alfabético ascendente, mostrando grupos de a 10 registros y con paginación.

  Escenario: Realizar filtro
    Dado que el usuario requiere realizar búsqueda o filtro entre los usuarios existentes
    Cuando el usuario ingrese un dato en campo de escritura y seleccione la opción “Buscar”
    Entonces el sistema realizara la búsqueda y mostrara la(s) coincidencia(s), por el contrario si no encuentra ninguna coincidencia o no se ingresa ningún dato de filtro, mostrara mensaje informativo.

  Escenario: Generar reporte
    Dado que el usuario requiere descargar el historial de los usuarios existentes de su Empresa/OT
    Cuando el usuario selecciona la opción “Descargar Reporte”
    Entonces el sistema realiza la descarga del “Reporte Usuarios” con la información de los Usuarios creados en el sistema y con los datos definidos “Formulario Gestión de Usuarios ” en formato Excel.

  Escenario: Crear nuevo usuario
    Dado que el usuario requiere crear nuevos usuarios en el sistema
    Cuando el usuario selecciona la opción “Crear Usuario”
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0044_Crear Usuarios Empresa/OT

  Escenario: Editar usuarios
    Dado que el usuario requiere modificar usuarios creados en el sistema
    Cuando el usuario selecciona la opción “Editar” sobre el usuario que desea modificar
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0045_Editar Usuarios Empresa/OT.

  Escenario: Cambiar estado de usuario
    Dado que el usuario requiere cambiar el estado de un Usuario
    Cuando el usuario selecciona la opción “Activar/Inactivar” sobre el usuario que desea cambiar el estado
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0046_Cambiar Estado Usuario Empresa/OT

  Escenario: Ver detalle usuario
    Dado que el usuario requiere ver la información detallada de un Usuario
    Cuando el usuario selecciona la opción “Ver detalle” sobre el usuario que desea ver
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0047_Ver Detalle Usuarios Empresa/OT
