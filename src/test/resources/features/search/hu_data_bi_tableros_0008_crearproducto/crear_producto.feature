#language: es

Característica: Crear Producto

  Como usuario Administrador Interno
  Quiero crear nuevos productos
  Para configurar la paramétrica de los productos en el portal


  Escenario: Mostrar Formulario
    Dado que el usuario requiere crear nuevos Productos
    Cuando el usuario selecciona la opción “Crear Producto” del Formulario Gestionar Producto (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0007_Gestionar Productos)
    Entonces el sistema muestra la ventana emergente “Producto” con los datos y validaciones definidas en “Formulario Crear o Editar Producto”.

    #Ejemplo
    #Dado que el usuario requiere crear nuevos productos
    #Cuando el usuario Administrador Interno selecciona la opción "Crear Producto" del Formulario "Gestionar Productos"
    #Entonces el sistema muestra Formulario Crear o Editar Producto con los siguientes campos: Logo Producto, Nombre del producto, Descripción Producto, Id Producto, Vertical, Categoría, Estado, Vista Publica y URL Destino de botón Conoce Más.

  Escenario: Crear Producto exitosamente
    Dado que el usuario requiere crear un nuevo Producto exitosamente
    Cuando el usuario realiza el registro de los datos obligatorios de la Ventana Emergente “Producto” y selecciona la opción “Guardar”
    Entonces el sistema valida los datos de forma correcta mostrando mensaje de confirmación de la creación del nuevo Producto, guarda la información del producto en sistema y muestra el nuevo registro en la tabla del formulario Gestionar Producto (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0007_Gestionar Productos).

    #Ejemplo
    #Dado que el usuario requiere crear un nuevo Producto
    #Cuando el usuario Administrador Interno realiza el registro de los datos obligatorios del "Formulario Crear o Editar Producto" y selecciona la opción "Guardar"
    #Entonces el sistema valida los datos de forma correcta mostrando mensaje de confirmación de la creación del nuevo Producto
    #Y pregunta al usuario si desea crear un nuevo Producto
    #Y el usuario selecciona la opción "Sí"
    #Entonces el sistema guarda la información del producto creado en el sistema y el nuevo registro en la tabla del Formulario "Gestionar Producto"
    #Y muestra el "Formulario Crear o Editar Producto" con los campos habilitados para la creación de un nuevo producto

    #Dado que el usuario requiere crear un nuevo Producto
    #Cuando el usuario Administrador Interno realiza el registro de los datos obligatorios del "Formulario Crear o Editar Producto" y selecciona la opción "Guardar"
    #Entonces el sistema valida los datos de forma correcta mostrando mensaje de confirmación de la creación del nuevo Producto
    #Y pregunta al usuario si desea crear un nuevo Producto
    #Y el usuario selecciona la opción "No"
    #Entonces el sistema guarda la información del producto creado en el sistema y el nuevo registro en la tabla del Formulario "Gestionar Producto"

  Escenario: Obligatoriedad de datos
    Dado que el usuario no ingresa información en uno o más campos obligatorios
    Cuando selecciona la opción “Guardar”
    Entonces el sistema emite mensaje de obligatoriedad de datos y no almacena la información.

  Escenario: Cancelar creación
    Dado que el usuario requiere cancelar la creación de un nuevo Producto
    Cuando el usuario se encuentra registrando datos de la Ventana Emergente “Producto” y selecciona la opción “Cancelar”
    Entonces el sistema no realiza almacenamiento de datos del producto y cierra la ventana emergente.

  Escenario: Auditoria
    Dado que se requiere guardar la auditoria de creación del producto
    Cuando el usuario crea de un nuevo Producto
    Entonces el sistema identifica y almacena dos datos definidos en “Datos Auditoria”

  Escenario: Duplicidad de registro
    Dado que se requiere evitar el registro duplicado de productos
    Cuando el usuario realiza el registro de un producto y selecciona la opción Guardar
    Entonces el sistema valida los datos y encuentra un producto creado con los mismos valores, muestra el correspondiente mensaje informativo de duplicidad y no almacena la información.

    Escenario: Agregar boton Conoce más
      Dado que se requiere gestionar el botón “Conoce Más” para un producto
      Cuando el usuario ingresa el dato URL Destino y activa el botón para visualización
      Entonces el sistema habilita la opción en el portafolio de productos correspondiente (funcionalidad descrita en el historia de usuario HU_DATA & BI_TABLEROS_0048_Ver Productos Activos y HU_DATA & BI_TABLEROS_0056_Ver Portafolio), por el contrario si la opción queda inactiva no se visualiza la opción en pantalla.

      #Ejemplo
      #Dado que el usuario Administrador Interno está creando un producto
      #Cuando el usuario Administrador Interno ingresa el dato URL Destino y activa el botón "Conoce Más"
      #Entonces el sistema habilita la opción "Conoce Más" en el portafolio del producto

      #Dado que el usuario está creando un producto
      #Cuando el usuario ingresa el dato URL Destino y no activa el botón "Conoce Más"
      #Entonces el sistema No habilita la opción "Conoce Más" en el portafolio del producto
