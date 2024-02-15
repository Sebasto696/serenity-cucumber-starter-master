# language: es

Característica: Editar Productos

  Como usuario Administrador Interno
  Quiero modificar productos
  Para modificar la paramétrica de los productos en el portal


  Escenario: Mostrar Formulario
    Dado que el usuario requiere editar Productos existentes
    Cuando el usuario selecciona la opción “Editar” sobre el producto que desea modificar del Formulario Gestionar Producto (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0007_Gestionar Productos)
    Entonces el sistema muestra la ventana emergente “Producto” con los datos y validaciones definidas en “Formulario Crear o Editar Producto”.

    #Ejemplo:
    #Dado que el usuario requiere crear nuevos productos
    #Cuando el usuario Administrador Interno selecciona la opción "Editar" sobre el producto que desea modificar
    #Entonces el sistema muestra Formulario Crear o Editar Producto con los siguientes campos habilitados para edición: Logo Producto, Nombre del producto, Descripción Producto, Id Producto, Vertical, Categoría, Estado, Vista Publica y URL Destino de botón Conoce Más.

  Escenario: Editar Producto
    Dado que el usuario requiere modificar datos de productos creados
    Cuando el usuario realiza la edición de uno o más datos de la Ventana Emergente “Producto” y selecciona la opción “Guardar”
    Entonces el sistema valida los datos de forma correcta mostrando mensaje de confirmación de la edición del producto, guarda la información del producto en sistema y muestra el registro actualizado en la tabla del formulario Gestionar Producto (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0007_Gestionar Productos)

    #Ejemplo:
    #Dado que el usuario requiere editar un Producto exitosamente
    #Cuando el usuario Administrador Interno realiza la edición de uno o más datos del Formulario Crear o Editar Producto y selecciona la opción "Guardar"
    #Entonces el sistema valida que los datos sean correctos mostrando mensaje de confirmación de la edición del producto
    #Y guarda la información del Producto en el sistema
    #Y muestra el registro actualizado en la tabla del formulario "Gestionar Productos"

  Escenario: Obligatoriedad de datos
    Dado que el usuario no ingresa información en uno o más campos obligatorios
    Cuando selecciona la opción Guardar
    Entonces el sistema emite mensaje de obligatoriedad de datos y no almacena la información.

    #Ejemplo:
    #Dado que el usuario no ha ingresado información en uno o más campos obligatorios para la edición de un Producto
    #Cuando el usuario selecciona la opción "Guardar" del Formulario Crear o Editar Producto
    #Entonces el sistema emite un mensaje de obligatoriedad de datos
    #Y no almacena la información en el sistema

  Escenario: Cancelar edición
    Dado que el usuario requiere cancelar la edición del Producto
    Cuando el usuario se encuentra registrando datos de la Pestaña Datos Producto y/o Pestaña Asociar Tableros de la Ventana Emergente “Producto” y selecciona la opción “Cancelar”
    Entonces el sistema no realiza almacenamiento de datos del producto y cierra la ventana emergente.

    #Ejemplo:
    #Dado que el usuario está editando un Producto en el Formulario Crear o Editar Producto
    #Cuando el usuario Administrador Interno selecciona la opción “Cancelar”
    #Entonces el sistema no realiza almacenamiento de datos del producto
    #Y cierra el formulario de edición

  Escenario: Auditoria
    Dado que se requiere guardar la auditoria de edición del producto
    Cuando el usuario edita un Producto existente
    Entonces el sistema identifica y almacena dos datos definidos en “Datos Auditoria”

  Escenario: Duplicidad de registro del producto editado
    Dado que se requiere evitar el registro duplicado de productos
    Cuando el usuario realiza la edición de datos de un producto y selecciona la opción Guardar
    Entonces el sistema valida los datos y si encuentra un producto creado con los mismos valores, muestra el correspondiente mensaje informativo de duplicidad y no almacena la información.

    #Ejemplo:
    #Dado que se requiere evitar el registro duplicado de productos
    #Cuando el usuario Administrador Interno realiza la edición de datos de un producto y selecciona la opción "Guardar"
    #Entonces el sistema valida los datos encontrando un producto creado con los mismos valores
    #Y muestra el correspondiente mensaje informativo de duplicidad
    #Y no almacena la información del producto en el sistema