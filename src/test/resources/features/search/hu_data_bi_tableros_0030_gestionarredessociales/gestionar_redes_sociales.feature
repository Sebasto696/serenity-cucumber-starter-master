# language: es

Característica: Gestionar Redes Sociales

    Como usuario Administrador Interno
    Quiero gestionar la información de redes sociales
    Para realizar modificaciones o actualizaciones de la información de redes sociales en el portal


    Escenario: Visualizar formulario Editor Redes Sociales
        Dado que el usuario requiere visualizar la información de redes sociales publicadas en el portal
        Cuando el usuario selecciona la opción “Editor de Redes Sociales”
        Entonces el sistema muestra el formulario de edición de redes sociales con los datos y las validaciones definidas en “Formulario Editor de Redes Sociales”

    Escenario: Actualizar URL red social exitosamente
        Dado que el usuario requiere cambiar la URL de una o más redes sociales
        Cuando el usuario ingresa la URL en el campo de texto “URL” y selecciona la opción “Guardar”
        Entonces el sistema valida y actualiza la información solicitando confirmación por medio de mensaje de confirmación de la edición de URL con las opciones “Cancelar” y “Confirmar”

    Escenario: Cancelar o confirmar edición URL
        Dado que el usuario requiere confirmar o cancelar la edición de una URL
        Cuando el usuario edita una o más URL y seleccionar la opción “Confirmar” del mensaje
        Entonces el sistema realiza actualización las URL ingresadas y cierra el mensaje, por el contrario si el usuario seleccionó la opción “Cancelar” el sistema no realiza ningún cambio o actualización y cierra el mensaje.

    Escenario: Activar o Inactivar Red Social
        Dado que se requiere Activar o Inactivar la visualización de una o más redes sociales en el pie de página del portal
        Cuando el usuario selecciona la opción “Activar/Inactivar” para la red social que desea y selecciona la opción “Guardar”
        Entonces el sistema realiza el cambio de estado solicitando confirmación por medio del mensaje de confirmación de activación o inactivación con las opciones “Cancelar” y “Confirmar”

    Escenario: Guardar Auditoria
        Dado que se requiere guardar la auditoria de edición o activación e inactivación de la red social
        Cuando el usuario ingresa una URL o activa e inactiva una red social
        Entonces el sistema identifica y almacena dos datos definidos en “Datos Auditoria”
