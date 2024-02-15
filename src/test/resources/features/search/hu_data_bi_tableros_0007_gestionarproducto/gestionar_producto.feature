# language: es


Característica: Gestionar Productos

  Como Usuario Administrador Interno
  Quiero visualizar todos los productos existentes y contar con las opciones para editar, ver el detalle, activar o inactivar y crear nuevos productos
  Para realizar la gestión de la parametrización de productos del portal


  Escenario: Visualizar listado de productos
    Dado que el usuario requiere visualizar una tabla con el listado de todos los productos existentes
    Cuando el usuario ingresa al portal y selecciona la opción “Gestionar Productos”
    Entonces el sistema muestra la pantalla Gestionar Productos con los datos y validaciones definidas en “Formulario Gestionar Productos”.


  Escenario: Visualizar productos ordenados alfabéticamente
    Dado que el usuario requiere visualizar los productos existentes de forma ordenada
    Cuando el usuario Administrador Interno ingresa al portal y selecciona la opción “Gestionar Productos”
    Entonces el sistema mostrara en la tabla todos los productos creados en el sistema en orden alfabético ascendente, mostrando grupos de a 10 y con paginación.

    #Ejemplo
    #Dado que el usuario Administrador Interno requiere visualizar los productos existentes de forma ordenada
    #Cuando el usuario Administrador Interno ingresa al portal y selecciona la opción "Gestionar Productos"
    #Entonces el sistema muestra en la tabla todos los productos creados en el sistema en orden alfabético ascendente
    #Y muestra los productos en grupos de a 10
    #Y presenta paginación para navegar a través de los resultados

  Escenario: Filtrar por estados de productos
    Dado que el usuario requiere realizar filtro entre los estados de los productos existentes
    Cuando el usuario seleccione la opción “Gestionar Productos” y seleccione la opción de filtrado en el campo Estado.
    Entonces el sistema realizara el filtro según la selección del usuario (activo o inactivo) y mostrara la(s) coincidencia(s), por el contrario si no encuentra ninguna coincidencia mostrara mensaje informativo.

    #Ejemplos

    #Dado que el usuario ingresa al portal
    #Cuando el usuario Administrador Interno selecciona la opción "Gestionar Productos" y elige filtrar por el estado "Activo"
    #Entonces el sistema muestra los Productos activos en la tabla

    #Dado que el usuario ingresa al portal
    #Cuando el usuario Administrador Interno selecciona la opción "Gestionar Productos" y elige filtrar por el estado "Inactivo"
    #Entonces el sistema muestra los Productos inactivos en la tabla

    #Dado que el usuario ingresa al portal
    #Cuando el usuario Administrador Interno selecciona la opción "Gestionar Productos" y elige filtrar por el estado "Activo"
    #Entonces el sistema muestra un mensaje informativo indicando que no se encontraron Productos activos

    #Dado que el usuario ingresa al portal
    #Cuando el usuario Administrador Interno selecciona la opción "Gestionar Productos" y elige filtrar por el estado "Inactivo"
    #Entonces el sistema muestra un mensaje informativo indicando que no se encontraron Productos inactivos

  Escenario: Búsqueda de productos por palabra clave
    Dado que el usuario requiere realizar una búsqueda o filtro dentro de los productos existentes
    Cuando el usuario ingresa una palabra clave y selecciona la opción “Buscar Productos”
    Entonces el sistema realiza la búsqueda de la palabra ingresada dentro de los nombres de los productos existentes y muestra la o las coincidencias encontradas.

    #Ejemplos
    #Dado que el usuario requiere realizar una búsqueda o filtro dentro de los productos existentes
    #Cuando el usuario Administrador Interno ingresa la palabra clave "PalabraExistenteEnProductos" y selecciona la opción "Buscar Productos"
    #Entonces el sistema realiza la búsqueda de la palabra "PalabraExistenteEnProductos" dentro de los nombres de los productos existentes
    #Y muestra las coincidencias encontradas en la tabla de productos

    #Dado que el usuario requiere realizar una búsqueda o filtro dentro de los productos existentes
    #Cuando el usuario Administrador Interno ingresa la palabra clave "PalabraNoExistente" y selecciona la opción "Buscar Productos"
    #Entonces el sistema realiza la búsqueda de la palabra "PalabraNoExistente" dentro de los nombres de los productos existentes
    #Y no muestra ninguna coincidencia
    #Y muestra un mensaje informativo indicando que no se encontraron productos con la palabra clave

  Escenario: Descargar resumen de productos
    Dado que el usuario requiere descargar el resumen de los productos creados en el sistema
    Cuando el usuario selecciona la opción “Descargar Reporte”
    Entonces el sistema realiza la descarga del reporte “Productos” con la información de todos los productos creados y con los datos definidos en “Formulario Gestionar Productos”, en formato Excel.

    #Ejemplo:
    #Dado que el usuario Administrador Interno requiere descargar el resumen de los productos creados en el sistema
    #Cuando el usuario selecciona la opción "Descargar Reporte"
    #Entonces el sistema sistema realiza la descarga del reporte "Productos" en formato Excel
    #Y el reporte incluye los siguientes datos para cada producto: Producto, Vertical y Estado

  Escenario: Modificar productos existentes
    Dado que el usuario requiere modificar productos creados en el sistema
    Cuando el usuario selecciona la opción “Editar” sobre el producto que desea modificar
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0009_Editar Producto.

  Escenario: Crear nuevos productos
    Dado que el usuario requiere crear nuevos productos en el sistema
    Cuando el usuario selecciona la opción “Crear Producto”
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0008_Crear Producto.

  Escenario: Ver detalle de un producto
    Dado que el usuario requiere ver el detalle de un producto
    Cuando el usuario selecciona la opción “Ver detalle” sobre el producto que desea visualizar
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0011_Ver Detalle Producto.

  Escenario: Activar/Inactivar producto
    Dado que el usuario requiere realizar activación o inactivación de un producto
    Cuando el usuario selecciona la opción “Activar/Inactivar” sobre el producto que desea cambiar el estado
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0010_Cambiar Estado del Producto.
