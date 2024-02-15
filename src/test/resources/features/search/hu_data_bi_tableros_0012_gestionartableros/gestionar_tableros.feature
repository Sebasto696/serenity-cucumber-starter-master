# language: es

Característica: Gestionar Tableros

  Como Usuario Administrador Interno
  Quiero visualizar todos los tableros existentes y contar con las opciones para editar, ver el detalle, activar o inactivar y crear nuevos tableros con su asociación a productos
  Para realizar la gestión de la parametrización de tableros del portal


  Escenario: Mostrar Formulario
    Dado que el usuario requiere visualizar una tabla con el listado de todos los tableros existentes
    Cuando el usuario ingresa al portal y selecciona la opción “Gestionar Tableros”
    Entonces el sistema muestra la pantalla Gestionar Tableros con los datos y validaciones definidas en “Formulario Gestionar Tableros”

    #Ejemplo:
    #Dado que el usuario Administrador Interno ingresa al portal
    #Cuando el usuario selecciona la opción "Gestionar Tableros"
    #Entonces el sistema muestra la pantalla Gestionar Tableros con una tabla de tableros con los siguientes encabezados: Tablero, Vistas, Producto, Vertical, Estado y Acciones

  Escenario: Visualizar Tableros ordenados
    Dado que el usuario requiere visualizar los tableros existentes de forma ordenada
    Cuando el usuario Administrador Interno ingresa al portal y selecciona la opción “Gestionar Tableros”
    Entonces el sistema muestra en la tabla todos los tableros creados en el sistema en orden alfabético ascendente, mostrando grupos de a 10 y con paginación.

    #Ejemplo:
    #Dado que el usuario Administrador Interno ingresa al portal con su usuario y contraseña
    #Cuando el usuario Administrador Interno selecciona la opción “Gestionar Tableros”
    #Entonces el sistema muestra la pantalla "Gestionar Tableros"
    #Y el sistema muestra en la tabla los tableros creados en orden alfabético ascendente

    #Ejemplo:
    #Dado que el usuario Administrador Interno está en la pantalla "Gestionar Tableros"
    #Cuando existen más de 10 tableros creados en el sistema
    #Entonces el sistema muestra los tableros en grupos de a 10 con paginación al exceder los 10

  Escenario: Filtrar Tableros por Estado
    Dado que el usuario requiere realizar filtro entre los estados de los tableros existentes
    Cuando el usuario selecciona la opción “Gestionar Tableros” y selecciona la opción de filtrado en el campo Estado.
    Entonces el sistema realiza el filtro según la selección del usuario (activo o inactivo) y muestra la(s) coincidencia(s), por el contrario, si no encuentra ninguna coincidencia, muestra mensaje informativo.

    #Ejemplo:
    #Dado que el usuario está en la pantalla "Gestionar Tableros" y hay tableros en el sistema con estado activo
    #Cuando el usuario selecciona la opción de filtrado por estado activo
    #Entonces el sistema muestra solo los tableros con estado activo

    #Ejemplo:
    #Dado que el usuario está en la pantalla "Gestionar Tableros" y hay tableros en el sistema con estado inactivo
    #Cuando el usuario selecciona la opción de filtrado por estado inactivo
    #Entonces el sistema muestra solo los tableros con estado inactivo

    #Ejemplo:
    #Dado que el usuario está en la pantalla "Gestionar Tableros" y no hay tableros en el sistema en estado "Activo"
    #Cuando el usuario selecciona el filtro de estado "Activo"
    #Entonces el sistema muestra un mensaje indicando que no se encontraron Tableros Activos

    #Ejemplo:
    #Dado que el usuario está en la pantalla "Gestionar Tableros" y no hay tableros en el sistema en estado "Inactivo"
    #Cuando el usuario selecciona el filtro de estado "Inactivo"
    #Entonces el sistema muestra un mensaje indicando que no se encontraron Tableros Inactivos

  Escenario: Buscar Tableros
    Dado que el usuario requiere realizar una búsqueda o filtro dentro de los tableros existentes
    Cuando el usuario ingresa una palabra clave y selecciona la opción “Buscar Tablero”
    Entonces el sistema realiza la búsqueda de la palabra ingresada dentro de los nombres de los tableros existentes y muestra la o las coincidencias encontradas.

    #Ejemplo:
    #Dado que el usuario requiere realizar una búsqueda o filtro dentro de los tableros existentes
    #Cuando el usuario Administrador Interno ingresa la palabra clave "PalabraExistenteEnTableros" y selecciona la opción "Buscar Tableros"
    #Entonces el sistema realiza la búsqueda de la palabra "PalabraExistenteEnTableros" dentro de los nombres de los tableros existentes
    #Y muestra las coincidencias encontradas en la tabla de tableros

    #Ejemplo:
    #Dado que el usuario requiere realizar una búsqueda o filtro dentro de los tableros existentes
    #Cuando el usuario Administrador Interno ingresa la palabra clave "PalabraNoExistente" y selecciona la opción "Buscar Tableros "
    #Entonces el sistema realiza la búsqueda de la palabra "PalabraNoExistente" dentro de los nombres de los tableros existentes
    #Y no muestra ninguna coincidencia
    #Y muestra un mensaje informativo indicando que no se encontraron tableros con la palabra clave

  Escenario: Descargar Reporte de Tableros
    Dado que el usuario requiere descargar el resumen de los tableros creados en el sistema
    Cuando el usuario selecciona la opción “Descargar Reporte”
    Entonces el sistema realiza la descarga del reporte “Tableros” con la información de todos los productos creados y con los datos definidos en “Formulario Gestionar Tableros”, en formato Excel.

    #Ejemplo:
    #Dado que el usuario Administrador Interno requiere descargar el resumen de los tableros creados en el sistema
    #Cuando el usuario selecciona la opción "Descargar Reporte"
    #Entonces el sistema sistema realiza la descarga del reporte "Tableros" en formato Excel
    #Y el reporte incluye los siguientes datos para cada tablero: Tablero, Vistas, Producto, Vertical y Estado

  Escenario: Editar Tablero
    Dado que el usuario requiere modificar tableros creados en el sistema
    Cuando el usuario selecciona la opción “Editar” sobre el tablero que desea modificar
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0014_Editar Tablero.

  Escenario: Crear Tablero
    Dado que el usuario requiere crear nuevos tableros en el sistema
    Cuando el usuario selecciona la opción “Crear Tablero”
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0013_Crear Tablero.

  Escenario: Ver Detalle de Tablero
    Dado que el usuario requiere ver el detalle de un tablero
    Cuando el usuario selecciona la opción “Ver detalle” sobre el tablero que desea visualizar el detalle
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0015_Ver Detalle de Tablero.

  Escenario: Cambiar Estado de Tablero
    Dado que el usuario requiere realizar activación o inactivación de un tablero
    Cuando el usuario selecciona la opción “Activar/Inactivar” sobre el tablero que desea cambiar el estado
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0016_Cambiar Estado Tablero.

