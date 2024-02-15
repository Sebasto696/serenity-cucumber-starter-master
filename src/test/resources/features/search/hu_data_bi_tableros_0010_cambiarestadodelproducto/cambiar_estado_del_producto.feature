# language: es

Característica: Cambiar Estado del Producto

  Como usuario Administrador Interno SuperAdmin
  Quiero realizar el cambio de estado de un producto
  Para realizar activación o inactivación productos


  Escenario: Mensaje de Confirmación
    Dado que se requiere confirmar el cambio de estado de un producto
    Cuando el usuario selecciona la opción “Activar/Inactivar” sobre el producto que desea cambiar el estado del Formulario Gestionar Productos (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0007_Gestionar Productos)
    Entonces el sistema muestra mensaje de confirmación de cambio de estado con las opciones “Cancelar” y “Confirmar”

  Escenario: Cambio de Estado Exitoso
    Dado que el usuario requiere cambiar el estado de un producto
    Cuando el usuario selecciona la opción “Confirmar” del mensaje de confirmación de cambio de estado
    Entonces el sistema realiza el cambio de estado del producto mostrando la actualización en la tabla de productos del Formulario Gestionar Productos (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0007_Gestionar Productos). Si el producto se encontraba Activo cambia su estado a Inactivo y viceversa.

    #Ejemplo:
    #Dado que el usuario está en el Formulario Gestionar Productos y ha seleccionado la opción “Inactivar” sobre un producto en estado activo
    #Cuando el usuario Administrador Interno elige la opción “Confirmar” en el mensaje de confirmación
    #Entonces el sistema cambia el estado del producto a Inactivo
    #Y inactiva la visualización del producto en el portafolio de productos correspondiente
    #Y muestra la actualización del estado del producto en la tabla de productos del Formulario Gestionar Productos

    #Dado que el usuario está en el Formulario Gestionar Productos y ha seleccionado la opción “Activar” sobre un producto en estado inactivo
    #Cuando el usuario Administrador Interno elige la opción “Confirmar” en el mensaje de confirmación
    #Entonces el sistema cambia el estado del producto a Activo
    #Y activa la visualización del producto en el portafolio de productos correspondiente
    #Y muestra la actualización del estado del producto en la tabla de productos del Formulario Gestionar Productos

  Escenario: Cancelar Cambio de Estado
    Dado que el usuario requiere cancelar el cambio de estado del Producto
    Cuando el usuario opción “Cancelar” del mensaje de confirmación de cambio de estado
    Entonces el sistema no realiza cambio de estado y cierra el mensaje de confirmación.

  Escenario: Auditoria del Cambio de Estado
    Dado que se requiere guardar la auditoria de edición del producto
    Cuando el usuario edita un Producto existente
    Entonces el sistema identifica y almacena dos datos definidos en “Datos Auditoria”

    #Ejemplo:
    #Dado que el usuario está editando el estado de un Producto existente
    #Cuando el usuario Administrador Interno realiza la edición del dato estado del Producto
    #Entonces el sistema identifica y almacena los siguientes datos: Tabla, Id Vertical, Id Producto, Proceso, Fecha creación, Fecha última modificación, Usuario modificador, Dato anterior y Dato nuevo