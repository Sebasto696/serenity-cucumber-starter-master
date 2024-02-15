# language: es

Característica: Gestionar Clientes

  Como usuario Administrador Interno (SuperAdmin)
  Quiero realizar el cambio de estado de un tablero
  Para realizar activación o inactivación de tableros


  Escenario: Opciones de Gestión
    Dado que el usuario requiere realizar la gestión de Clientes o Usuarios Administradores
    Cuando el usuario ingresa al portal y selecciona la opción “Gestionar Clientes”
    Entonces el sistema muestra pantalla “Gestionar Clientes” con las opciones de gestión “Administrar Usuario Administrador” y “Administrar Empresa / OT”

    #Ejemplo:
    #Dado que el usuario Administrador Interno ingresa al portal con su usuario y contraseña
    #Cuando el usuario Administrador Interno selecciona la opción “Gestionar Clientes”
    #Entonces el sistema muestra la pantalla "Gestionar Clientes" con las siguientes opciones de gestión: “Administrar Usuario Administrador” y “Administrar Empresa / OT”

  Escenario: Mostrar Formulario para Gestión por Usuario
    Dado que el usuario requiere realizar gestión por usuarios de clientes
    Cuando el usuario selecciona la opción “Administrar Usuario Administrador” de la pantalla “Gestionar Clientes”
    Entonces el sistema muestra el formulario Usuarios Administradores con los datos y validaciones definidas en “Formulario Usuarios Administradores”

    #Ejemplo:
    #Dado que el usuario Administrador Interno esta en la pantalla Gestionar Clientes
    #Cuando el usuario selecciona la opción "Administrar Usuario Administrador"
    #Entonces el sistema muestra la pantalla Usuarios Administradores con una tabla de usuarios con los siguientes encabezados: Nombre Usuario , Empresa / OT, Tipo de cliente, Vertical, Estado y Acciones

  Escenario: Paginación y Orden
    Dado que el usuario requiere visualizar los usuarios administradores existentes de forma ordenada
    Cuando el usuario selecciona la opción “Administrar Usuario Administrador”
    Entonces el sistema mostrara el formulario Usuarios Administradores con la tabla todos los Usuarios Administradores creados en el sistema en orden alfabético ascendente, mostrando grupos de a 10 y con paginación.

    #Ejemplo:
    #Dado que el usuario Administrador Interno esta en la pantalla Gestionar Clientes
    #Cuando el usuario selecciona la opción "Administrar Usuario Administrador"
    #Entonces el sistema muestra la pantalla "Usuarios Administradores"
    #Y el sistema muestra en la tabla los Usuarios Administradores creados en orden alfabético ascendente

    #Ejemplo:
    #Dado que el usuario Administrador Interno está en la pantalla "Usuarios Administradores"
    #Cuando existen más de 10 Usuarios Administradores creados en el sistema
    #Entonces el sistema muestra los Usuarios Administradores en grupos de a 10 con paginación al exceder los 10

  Escenario: Filtrar por Estados
    Dado que el usuario requiere realizar filtro entre los estados de los usuarios administradores existentes
    Cuando el usuario seleccione la opción de filtrado en el campo Estado del formulario Usuarios Administradores.
    Entonces el sistema realizara el filtro según la selección del usuario (activo o inactivo) y mostrara la(s) coincidencia(s), por el contrario si no encuentra ninguna coincidencia mostrara mensaje informativo.

    #Ejemplo:
    #Dado que el usuario Administrador Interno está en la pantalla "Usuarios Administradores" y hay Usuarios Administradores creados en el sistema con estado Activo
    #Cuando el usuario selecciona la opción de filtrado por estado Activo
    #Entonces el sistema muestra solo los Usuarios Administradores con estado Activo

    #Ejemplo:
    #Dado que el usuario Administrador Interno está en la pantalla "Usuarios Administradores" y hay Usuarios Administradores creados en el sistema con estado Inactivo
    #Cuando el usuario selecciona la opción de filtrado por estado inactivo
    #Entonces el sistema muestra solo los Usuarios Administradores con estado inactivo

    #Ejemplo:
    #Dado que el usuario Administrador Interno está en la pantalla "Usuarios Administradores" y NO hay Usuarios Administradores creados en el sistema con estado Inactivo
    #Cuando el usuario selecciona el filtro de estado "Inactivo"
    #Entonces el sistema muestra un mensaje indicando que no se encontraron Usuarios Administradores Inactivos



  Escenario: Búsqueda por Usuario
    Dado que el usuario requiere realizar una búsqueda o filtro dentro de los usuarios administradores existentes
    Cuando el usuario ingresa una palabra clave y selecciona la opción “Buscar Usuario”
    Entonces el sistema realiza la búsqueda de la palabra ingresada dentro de los nombres de usuarios (Usuario cliente) existentes y muestra la o las coincidencias encontradas.

    #Ejemplo:
    #Dado que el usuario requiere realizar una búsqueda o filtro dentro de los Usuarios Administradores existentes
    #Cuando el usuario Administrador Interno ingresa la palabra clave "PalabraExistenteNombreUsuario" y selecciona la opción "Buscar Usuario"
    #Entonces el sistema realiza la búsqueda de la palabra "PalabraExistenteNombreUsuario" dentro de los nombres de los Usuarios Administradores existentes
    #Y muestra las coincidencias encontradas en la tabla de Usuarios Administradores

    #Ejemplo:
    #Dado que el usuario requiere realizar una búsqueda o filtro dentro de los Usuarios Administradores existentes
    #Cuando el usuario Administrador Interno ingresa la palabra clave "PalabraNoExistente" y selecciona la opción "Buscar Usuario"
    #Entonces el sistema realiza la búsqueda de la palabra "PalabraNoExistente" dentro de los nombres de los Usuarios Administradores existentes
    #Y no muestra ninguna coincidencia
    #Y muestra un mensaje informativo indicando que no se encontraron Usuarios Administradores con la palabra clave

  Escenario: Descargar Reporte
    Dado que el usuario requiere descargar el resumen de los usuarios de los clientes creados en el sistema
    Cuando el usuario selecciona la opción “Descargar Reporte” del formulario “Usuarios Administradores”
    Entonces el sistema realiza la descarga del reporte “Usuarios Administradores Clientes” con la información de todos los usuarios administradores de los clientes creados y con los datos definidos en “Formulario Usuarios Administradores”, en formato Excel.

    #Ejemplo:
    #Dado que el usuario Administrador Interno requiere descargar el listado de los Usuarios Administradores creados en el sistema
    #Cuando el usuario selecciona la opción "Descargar Reporte"
    #Entonces el sistema sistema realiza la descarga del reporte "Usuarios Administradores Clientes" en formato Excel
    #Y el reporte incluye los siguientes datos para cada Usuarios Administradores: Nombre Usuario , Empresa / OT, Tipo de cliente, Vertical y Estado

  Escenario: Crear Nuevo Usuario Administrador
    Dado que el usuario requiere crear nuevos Usuarios Administradores en el sistema
    Cuando el usuario selecciona la opción “Crear Usuario”
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0018_Crear Usuario Administrador.


  Escenario: Editar Usuario Administrador
    Dado que el usuario requiere modificar usuarios administradores creados en el sistema
    Cuando el usuario selecciona la opción “Editar” sobre el usuario administrador que desea modificar
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0019_Editar Usuario Administrador.

  Escenario: Ver Detalle Usuario Administrador
    Dado que el usuario requiere ver el detalle de un Usuario Administrador
    Cuando el usuario selecciona la opción “Ver detalle” sobre el Usuario Administrador que desea visualizar el detalle
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0020_Ver Detalle Usuario Administrador.

  Escenario: Realizar Gestión por Cliente
    Dado que el usuario requiere realizar gestión por clientes
    Cuando el usuario selecciona la opción “Por Clientes” de la pantalla “Administrar Empresa / OT”
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0021_Gestionar OT o Empresa

