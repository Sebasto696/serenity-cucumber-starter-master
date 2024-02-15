# language: es

Característica: Cambiar estado usuario empresa o ot

  Como usuario Administrador Cliente
  Quiero realizar el cambio de estado de un usuario
  Para realizar activación o inactivación de usuarios para su Empresa u OT


  Escenario: Mostrar mensaje de confirmación
    Dado que se requiere realizar el cambio de estado de un usuario
    Cuando el usuario selecciona la opción “Activar/Inactivar” sobre el usuario que desea cambiar el estado del Formulario Gestionar Usuario Empresa/OT (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0043_Gestionar Usuario Empresa/OT) Ver: Prototipo
    Entonces el sistema muestra mensaje de confirmación de cambio de estado con las opciones “Cancelar” y “Confirmar”.

  Escenario: Cambio de estado exitoso
    Dado que el usuario requiere cambiar el estado de un usuario
    Cuando el usuario selecciona la opción “Confirmar” del mensaje de confirmación de cambio de estado
    Entonces el sistema realiza el cambio de estado del usuario mostrando la actualización en la lista de usuario del Formulario Gestionar Usuarios Empresa/OT (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0043_Gestionar Usuario Empresa/OT). Si el usuario se encontraba Activo cambia su estado a Inactivo y viceversa.

  Escenario: Cancelar cambio de estado
    Dado que el usuario requiere cancelar el cambio de estado del usuario
    Cuando el usuario opción “Cancelar” del mensaje de confirmación de cambio de estado
    Entonces el sistema no realiza cambio de estado y cierra el mensaje de confirmación.

  Escenario: Auditoria del cambio de estado
    Dado que se requiere guardar la auditoria de edición del usuario
    Cuando el Administrador Cliente edita el estado de un usuario existente
    Entonces el sistema identifica y almacena dos datos definidos en “Datos Auditoria”
