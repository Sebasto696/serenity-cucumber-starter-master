# language: es

Característica: Gestionar Edición de Banners


  Como usuario Administrador Interno
  Quiero editar o actualizar contenido de los banner del portal
  Para realizar modificaciones o actualizaciones de información en el portal


  Escenario: Visualizar formulario Banners existentes
    Dado que el usuario requiere identificar y visualizar los banners existentes
    Cuando el usuario selecciona la opción “Editor de Banners”
    Entonces el sistema muestra el formulario “Gestionar Banners” con los datos y las validaciones definidas en “Formulario Gestionar Banners”, mostrando la tabla con el historial de banners creados en el sistema en orden de creación y en grupos de a 10 y con paginación.

  Escenario: Visualizar ventana Agregar de Banner
    Dado que el usuario requiere Agregar una nueva imagen a un Banner
    Cuando selecciona la opción “Agregar Banner” del formulario “Gestionar Banners”
    Entonces el sistema muestra la ventana emergente para agregar un banner con los datos y validaciones definidas en “Ventana Agregar Banner”. Ver: Prototipo

  Escenario: Edición de un banner exitosamente
    Dado que el usuario requiere agregar una nueva imagen a un banner de forma exitosa
    Cuando el usuario realiza selecciona de una imagen para alguno de los banners existentes y selecciona la opción “Guardar” de la “Ventana Agregar Banner”
    Entonces el sistema valida y actualiza la información solicitando confirmación por medio de mensaje de confirmación de la edición del banner con las opciones “Cancelar” y “Confirmar”

  Escenario: Activar o Inactivar banner
    Dado que se requiere Activar o Inactivar la visualización de un banner
    Cuando el usuario selecciona la opción “Activar/Inactivar” sobre el banner que desea
    Entonces el sistema realiza el cambio de estado solicitando confirmación por medio del mensaje de confirmación de activación o inactivación con las opciones “Cancelar” y “Confirmar”

  Escenario: Cancelar edición banner
    Dado que el usuario requiere confirmar o cancelar la edición y/o cambio de estado de un banner
    Cuando el usuario se encuentra editando datos de un banner y selecciona la opción “Confirmar”
    Entonces el sistema realiza actualización de la información editada del banner y cierra el mensaje, por el contrario si el usuario seleccionó la opción “Cancelar” el sistema no realiza ningún cambio o actualización de información y cierra el mensaje.

  Escenario: Generar Reporte
    Dado que el usuario requiere descargar el resumen con el historial de banners creados en el sistema
    Cuando el usuario selecciona la opción “Descargar Reporte”
    Entonces el sistema realiza la descarga del “Reporte Banner Portal” con la información de todos los banners creados y con los datos definidos en “Formulario Gestionar Banners”, en formato Excel.

  Escenario: Auditoria banner
    Dado que se requiere guardar la auditoria de edición, activación o inactivación de un banner
    Cuando el usuario edita o actualiza un banner
    Entonces el sistema identifica y almacena dos datos definidos en “Datos Auditoria”
