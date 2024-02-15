# language: es

Característica: Gestionar OT o Empresa

  Como Usuario Administrador Interno
  Quiero realizar la gestión por tipo de cliente, ya sea OT o Empresa
  Para identificar clientes existentes, descargar reportes y contar con las opciones para edición, vista del detalle y creación de nuevos clientes.


  Escenario: Mostrar formulario para Administrar Empresa / OT
    Dado que el usuario requiere realizar gestión por Empresa / OT
    Cuando el usuario selecciona la opción “Administrar Empresa / OT” de la pantalla “Gestionar Clientes” (Definida en la historia de usuario HU_DATA & BI_TABLEROS_0017_Gestionar Clientes)
    Entonces el sistema muestra el formulario “OT / Empresa” con los datos y validaciones definidas en “Formulario Datos OT”, mostrando por defecto la información definida para el tipo de cliente OT.

    #Ejemplo:
    #Dado que el usuario está en la pantalla de opciones de "Gestionar Clientes"
    #Cuando el usuario selecciona la opción "Administrar Empresa/OT"
    #Entonces el sistema muestra el formulario "OT / Empresa"
    #Y el sistema muestra una tabla con los siguientes encabezados: Tipo Cliente, Nombre OT, DIVIPO, Estado y Cantidad Usuarios
    #Y la información mostrada por defecto corresponde a los clientes Organismos de Tránsito

  Escenario: Selección Tipo de cliente Empresa
    Dado que el usuario requiere visualizar el listado de las empresas existentes
    Cuando el usuario selecciona la opción “EMPRESA” en el campo “Tipo Cliente”
    Entonces el sistema muestra la información definida para el tipo de cliente Empresa, con los datos y validaciones definidas en “Formulario Datos Empresa”

    #Ejemplo:
    #Dado que el usuario está en la pantalla "Administrar Empresa/OT"
    #Cuando el usuario selecciona en el campo "Tipo Cliente" la opción "EMPRESA"
    #Entonces el sistema muestra en la tabla los siguientes encabezados con la información de Empresas: Tipo Cliente, Nombre Empresa, Tipo Documento, Número Documento, Estado y Cantidad Usuarios

  Escenario: Paginación y orden OT o Empresas
    Dado que el usuario requiere visualizar las OT o Empresas existentes de forma ordenada
    Cuando el usuario selecciona la opción “Administrar Empresa / OT” de la pantalla “Gestionar Clientes”
    Entonces el sistema mostrara en la tabla todas las OT o Empresas creadas en el sistema en orden alfabético ascendente, mostrando grupos de a 10 y con paginación.

    #Ejemplo:
    #Dado que el usuario está en la pantalla de "Gestionar Clientes"
    #Cuando el usuario selecciona la opción "Administrar Empresa/OT"
    #Entonces el sistema muestra el formulario "OT / Empresa" mostrando por defecto la tabla con todos los Organismos de Tránsito en orden alfabético ascendente
    #Y la tabla muestra grupos de a 10 con paginación

    #Ejemplo:
    #Dado que el usuario está en la pantalla "Administrar Empresa/OT"
    #Cuando el usuario selecciona en el campo "Tipo Cliente" la opción "EMPRESA"
    #Entonces el sistema muestra la tabla con todas las Empresas en orden alfabético ascendente
    #Y la tabla muestra grupos de a 10 con paginación


  Escenario: Filtrar por estados
    Dado que el usuario requiere realizar filtro entre los estados de las OT o Empresas existentes
    Cuando el usuario seleccione la opción de filtrado en el campo Estado.
    Entonces el sistema realizara el filtro según la selección (activo o inactivo) y mostrara la(s) coincidencia(s), por el contrario si no encuentra ninguna coincidencia mostrara mensaje informativo.

    #Ejemplo:
    #

    #Ejemplo:
    #

    #Ejemplo:
    #

    #Ejemplo:
    #

    #Ejemplo:
    #


  Escenario: Búsqueda por OT o Empresa
    Dado que el usuario requiere realizar una búsqueda o filtro dentro de los OT o Empresas existentes
    Cuando el usuario ingresa una palabra clave y selecciona la opción “Buscar”
    Entonces el sistema realiza la búsqueda de la palabra ingresada dentro de los OT o Empresas existentes y muestra la o las coincidencias encontradas.

  Escenario: Descargar Reporte
    Dado que el usuario requiere descargar el resumen de los usuarios de los OT o Empresas creadas en el sistema
    Cuando el usuario selecciona la opción “Descargar Reporte” del formulario “OT / Empresa”
    Entonces el sistema realiza la descarga del “Reporte OT” o “Reporte Empresa” con la información de todos los usuarios OT o Empresas existentes (Según la selección del Tipo de Cliente) y con los datos definidos en los “Formulario Datos OT” o “Formulario Datos Empresa”, en formato Excel.

    #Ejemplo:
    #Dado que el usuario Administrador Interno está en la pantalla "OT / Empresa" y el campo Tipo de Cliente es "OT"
    #Cuando el usuario selecciona la opción "Descargar Reporte"
    #Entonces el sistema sistema realiza la descarga del reporte "OT" en formato Excel
    #Y el reporte incluye los siguientes datos para cada Organismo de Tránsito: Tipo Cliente , Nombre OT, DIVIPO, Estado y Cantidad Usuarios

    #Ejemplo:
    #Dado que el usuario Administrador Interno está en la pantalla "OT / Empresa" y el campo Tipo de Cliente es "Empresa"
    #Cuando el usuario selecciona la opción "Descargar Reporte"
    #Entonces el sistema sistema realiza la descarga del reporte "Empresa" en formato Excel
    #Y el reporte incluye los siguientes datos para cada Organismo de Tránsito: Tipo Cliente , Nombre Empresa, Tipo Documento, Número Documento, Estado y Cantidad Usuarios

  Escenario: Crear nuevo OT o Empresa
    Dado que el usuario requiere crear nuevas OT o Empresa en el sistema
    Cuando el usuario selecciona la opción “Crear OT o Empresa”
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0022_Crear OT o Empresa

  Escenario: Editar OT o Empresa
    Dado que el usuario requiere modificar OT o Empresas creadas en el sistema
    Cuando el usuario selecciona la opción “Editar” sobre la OT o Empresa que desea modificar
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0023_Editar OT o Empresa

  Escenario: Ver detalle OT o Empresa
    Dado que el usuario requiere ver el detalle de una OT o Empresa
    Cuando el usuario selecciona la opción “Ver detalle” sobre la OT o Empresa para la que desea visualizar el detalle
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0024_Ver Detalle OT o Empresa
