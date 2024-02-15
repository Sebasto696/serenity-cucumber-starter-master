# language: es

Característica: Cambiar Estado Tablero

  Como usuario Administrador Interno (SuperAdmin)
  Quiero realizar el cambio de estado de un tablero
  Para realizar activación o inactivación de tableros


  Escenario: Mensaje de Confirmación del Cambio de Estado
    Dado que se requiere confirmar el cambio de estado de un tablero
    Cuando el usuario selecciona la opción “Activar/Inactivar” sobre el tablero que desea cambiar el estado del Formulario Gestionar Tableros (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0012_Gestionar Tableros)
    Entonces el sistema muestra mensaje de confirmación de cambio de estado con las opciones “Cancelar” y “Confirmar”

    #Ejemplo:
    #Dado que el usuario está en el Formulario Gestionar Tableros
    #Cuando el usuario Administrador Interno selecciona la opción “Activar/Inactivar” sobre el Tablero deseado
    #Entonces el sistema muestra un mensaje de confirmación de cambio de estado con las opciones “Cancelar” y “Confirmar”

  Escenario: Cambio de Estado Exitoso
    Dado que el usuario requiere cambiar el estado de un tablero
    Cuando el usuario selecciona la opción “Confirmar” del mensaje de confirmación de cambio de estado
    Entonces el sistema realiza el cambio de estado del tablero mostrando la actualización en la tabla de tableros del Formulario Gestionar Tableros (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0012_Gestionar Tableros). Si el tablero se encontraba Activo cambia su estado a Inactivo y viceversa.

    #Ejemplo:
    #Dado que el usuario está en el Formulario Gestionar Tableros y ha seleccionado la opción “Activar” sobre un Tablero en estado Inactivo
    #Cuando el usuario Administrador Interno elige la opción “Confirmar” en el mensaje de confirmación
    #Entonces el sistema cambia el estado del Tablero a Activo
    #Y activa la visualización del Tablero en el portafolio de productos correspondiente
    #Y muestra la actualización del estado del Tablero en la tabla de productos del Formulario Gestionar Tableros

    #Ejemplo:
    #Dado que el usuario está en el Formulario Gestionar Tableros y ha seleccionado la opción “Inactivar” sobre un Tablero en estado Activo
    #Cuando el usuario Administrador Interno elige la opción “Confirmar” en el mensaje de confirmación
    #Entonces el sistema cambia el estado del Tablero a Inactivo
    #Y inactiva la visualización del Tablero en el portafolio de productos correspondiente
    #Y muestra la actualización del estado del Tablero en la tabla de productos del Formulario Gestionar Tableros

  Escenario: Cancelar Cambio de Estado
    Dado que el usuario requiere cancelar el cambio de estado del tablero
    Cuando el usuario opción “Cancelar” del mensaje de confirmación de cambio de estado
    Entonces el sistema no realiza cambio de estado y cierra el mensaje de confirmación.

    #Ejemplo:
    #Dado que el usuario está en el Formulario Gestionar Tableros y ha seleccionado la opción “Activar/Inactivar” sobre un Tablero
    #Cuando el usuario Administrador Interno elige la opción “Cancelar” en el mensaje de confirmación
    #Entonces el sistema no realiza cambios en el estado del Tablero

  Escenario: Auditoria del Cambio de Estado
    Dado que se requiere guardar la auditoria de edición del tablero
    Cuando el usuario edita el estado de un Tablero existente
    Entonces el sistema identifica y almacena dos datos definidos en “Datos Auditoria”

    #Ejemplo:
    #Dado que el usuario edita el estado de un Tablero existente
    #Cuando el usuario Administrador Interno confirma la edición del dato estado del Tablero
    #Entonces el sistema identifica y almacena los siguientes datos: Tabla, Id Vertical, Id Producto, Id Tablero, Proceso, Fecha creación, Fecha última modificación, Usuario modificador, Dato anterior y Dato nuevo