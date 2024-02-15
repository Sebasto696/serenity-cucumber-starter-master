# language: es

Característica: : Administrador Interno - Gestionar Verticales



  Como Administrador Interno (SuperAdmin)
  Quiero visualizar verticales existentes y contar con las opciones para ver el detalle, editar, crear nuevas verticales
  Para realizar la gestión de la parametrización de verticales del portal


  #(Escenarios) Criterios de aceptación plasmados en las historias de usuario


  Escenario: Visualizar tabla con el listado de todas las verticales existentes
    Dado que el usuario requiere visualizar una tabla con el listado de todas las verticales existentes
    Cuando el usuario ingresa al portal y selecciona la opción "Gestionar Verticales"
    Entonces el sistema muestra la pantalla Gestionar Verticales con los datos y validaciones definidas en "Formulario Gestionar Verticales"

  #Ejemplo
    #Dado que el usuario ingresa al portal
    #Cuando el usuario selecciona la opción Gestionar Verticales
    #Entonces el sistema muestra la pantalla Gestionar Verticales con una
  #tabla de verticales con los siguientes encabezados: Vertical, Descripción,
  # Tipo Usuario, Estado y Acciones


  Escenario: Visualizar verticales existentes de forma ordenada
    Dado que el usuario requiere visualizar las verticales existentes de forma ordenada
    Cuando el usuario Administrador Interno ingresa al portal y selecciona la opción "Gestionar Verticales"
    Entonces el sistema muestra en la tabla todas las verticales creadas en el sistema en orden alfabético ascendente, mostrando grupos de a 10 y con paginación.

    #Ejemplo
    #Dado que el usuario Administrador Interno ingresa al portal con su
      # usuario y contraseña
    #Cuando el usuario selecciona la opción Gestionar Verticales
    #Entonces el sistema muestra en la tabla las verticales creadas en orden
      # alfabético ascendente, agrupadas de 10 en 10
    #Y con paginación para cada grupo de 10


  Escenario: Realizar filtro entre los estados de las verticales existentes
    Dado que el usuario requiere realizar filtro entre los estados de las verticales existentes
    Cuando el usuario seleccione la opción "Gestionar Verticales" y seleccione la opción de filtrado en el campo Estado
    Entonces el sistema realiza el filtro según la selección del usuario (activo  o inactivo) y muestra la(s) coincidencia(s), o muestra mensaje informativo.

    #Ejemplos
    #Dado que el usuario ingresa al portal
    #Cuando el usuario selecciona la opción "Gestionar Verticales" y elige
      # filtrar por el estado "Activo"
    #Entonces el sistema muestra las verticales activas en la tabla

    #Dado que el usuario ingresa al portal
    #Cuando el usuario selecciona la opción "Gestionar Verticales" y elige
      # filtrar por el estado "Inactivo"
    #Entonces el sistema muestra las verticales inactivas en la tabla

    #Dado que el usuario ingresa al portal
    #Cuando el usuario selecciona la opción "Gestionar Verticales" y elige
      # filtrar por el estado "Activo"
    #Entonces el sistema muestra un mensaje informativo indicando que no se
    # encontraron verticales activas

    #Dado que el usuario ingresa al portal
    #Cuando el usuario selecciona la opción "Gestionar Verticales" y elige
      # filtrar por el estado "Inactivo"
    #Entonces el sistema muestra un mensaje informativo indicando que no se
    # encontraron verticales inactivas


  Escenario: Descargar el resumen de las verticales creadas en el sistema
    Dado que el usuario requiere descargar el resumen de las verticales creadas en el sistema
    Cuando el usuario selecciona la opción "Descargar Reporte"
    Entonces el sistema realiza la descarga del reporte "Verticales" con la información de todas las verticales creadas y con los datos definidos en "Formulario Gestionar Verticales", en formato Excel.

    #Ejemplo
    #Dado que el usuario Administrador Interno ingresa al portal con su
      # usuario y contraseña
    #Cuando el usuario Administrador Interno selecciona la opción "Descargar
      # Reporte"
    #Entonces el sistema realiza la descarga del "Reporte Verticales" en
    # formato Excel con los siguientes encabezados: Vertical, Descripción, Tipo Usuario y Estado


  Escenario: Modificar verticales creadas en el sistema
    Dado que el usuario requiere modificar verticales creadas en el sistema
    Cuando el usuario selecciona la opción "Editar" sobre la vertical que desea modificar
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0004_Editar Vertical.

  Escenario: Crear nuevas verticales en el sistema
    Dado que el usuario requiere crear nuevas verticales en el sistema
    Cuando el usuario selecciona la opción "Crear Vertical"
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0003_Crear Vertical.

  Escenario: Ver detalle verticales
    Dado que el usuario requiere ver la información con mas detalle de una vertical
    Cuando el usuario selecciona la opción “Ver detalle” sobre la vertical que desea
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0005_Ver Detalle Vertical

