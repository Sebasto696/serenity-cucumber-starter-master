# language: es

Característica: Ver Detalle Producto

  Como usuario Administrador Interno SuperAdmin
  Quiero visualizar el detalle de los productos creados
  Para conocer la información completa de un producto


  Escenario: Ver Detalle Producto
    Dado que el usuario requiere visualizar el detalle de un Producto
    Cuando el usuario selecciona la opción “Ver detalle” sobre el producto que desea visualizar del Formulario Gestionar Productos (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0007_Gestionar Productos)
    Entonces el sistema muestra la Ventana Emergente “Detalle Producto” con los datos y validaciones definidas en “Formulario Detalle Producto”

    #Ejemplo
    #Dado que el usuario está en el Formulario Gestionar Productos y hay al menos un Producto existente
    #Cuando el usuario Administrador Interno selecciona la opción “Ver detalle” sobre el producto deseado
    #Entonces el sistema muestra la Ventana Emergente “Detalle Producto” con los siguientes datos: Logo producto, Nombre producto, Descripción producto, Vertical, Estado, Fecha creación, Fecha última modificación, Tableros actuales, Categoría y Vista Publica

  Escenario: Cerrar Detalle Producto
    Dado que el usuario requiere cerrar la ventana de vista del detalle del Producto
    Cuando el usuario selecciona la opción cerrar de la ventana Detalle Producto
    Entonces el sistema cierra la ventana emergente de detalle del producto y retorna al Formulario Gestionar Productos (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0007_Gestionar Productos)

    #Ejemplo
    #Dado que el usuario Administrador Interno está visualizando el detalle de un Producto
    #Cuando el usuario selecciona la opción "Cerrar" de la ventana Detalle Producto
    #Entonces el sistema cierra la ventana emergente de detalle del Producto
    #Y el sistema vuelve al "Formulario Gestionar Productos"
