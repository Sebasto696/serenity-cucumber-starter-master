# language: es

Característica: Gestionar grupo de tableros

  Como usuario Administrador cliente
  Quiero realizar la gestión de grupos de tableros en el portal
  Para realizar la creación, modificación y visualización de Grupo de Tableros existentes para mi Organismo de Tránsito o Empresa


  Escenario: Mostrar formulario
    Dado que el usuario requiere visualizar un listado con todos los Grupo de Tableros creados para su Organismo de Tránsito o Empresa
    Cuando el usuario ingresa al portal y selecciona la opción “Gestionar Grupo de Tableros” de las opciones del Administrador Cliente (descritas en HU_DATA & BI_TABLEROS_0037_Ver Opciones Administrador Cliente)
    Entonces el sistema muestra el formulario “Gestor de Grupo de Tableros” con los datos y validaciones definidas en “Formulario Gestor de Grupo de Tableros ”, mostrando una tabla con todos los Grupos de Tableros creados en el sistema en orden alfabético ascendente, mostrando grupos de a 10 registros y con paginación.

  Escenario: Realizar filtro
    Dado que el usuario requiere realizar búsqueda o filtro entre los Grupos de Tableros existentes
    Cuando el usuario ingrese un dato en campo de filtro y seleccione la opción “Buscar”
    Entonces el sistema realizara la búsqueda y mostrara la(s) coincidencia(s), por el contrario si no encuentra ninguna coincidencia o no se ingresa ningún dato de filtro, mostrara el correspondiente mensaje informativo.

  Escenario: Generar reporte
    Dado que el usuario requiere descargar el resumen con el historial de Grupos de Tableros del portal
    Cuando el usuario selecciona la opción “Descargar Reporte”
    Entonces el sistema realiza la descarga del “Reporte Grupo de Tableros” con la información de los Grupos de Tableros creados en el sistema y con los datos definidos “Formulario Gestor de Grupo de Tableros ” en formato Excel.

  Escenario: Crear nuevo grupo de tableros
    Dado que el usuario requiere crear nuevos Grupos de Tableros de tableros en el sistema
    Cuando el usuario selecciona la opción “Crear Grupo de Tableros”
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0039_Crear Grupo de Tableros

  Escenario: Editar grupo de tableros
    Dado que el usuario requiere modificar un Grupo de Tableros en el sistema
    Cuando el usuario selecciona la opción “Editar” sobre el grupo de tableros que desea modificar
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0040_Editar Grupo de Tableros.

  Escenario: Ver detalle grupo de tableros
    Dado que el usuario requiere ver la información detallada de los Grupo de Tableros existentes en el sistema
    Cuando el usuario selecciona la opción “Ver detalle”
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0041_Ver Detalle Grupo de Tableros

  Escenario: Eliminar grupo de tableros
    Dado que el usuario requiere eliminar un Grupo de Tableros
    Cuando el usuario selecciona la opción “Eliminar” sobre el Grupo de Tableros que desea eliminar
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0042_Eliminar Grupo de Tableros
