# language: es

Característica: Ver Detalle Vertical

  Como usuario Administrador Interno SuperAdmin
  Quiero visualizar el detalle de las verticales
  Para conocer la información completa de las verticales para gestión


  Escenario: Ver detalle Vertical
    Dado que el usuario desea visualizar el detalle de una vertical
    Cuando el usuario selecciona la opción “Ver detalle” sobre la vertical que desea visualizar del Formulario Gestionar Verticales (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0002_Gestionar Verticales)
    Entonces el sistema muestra la Ventana Emergente “Detalle de Vertical” con los datos y validaciones definidas en “Formulario Detalle de Vertical”

    #Ejemplo
  #Dado que el usuario desea visualizar el detalle de una Vertical
  #Cuando el usuario Administrador Interno selecciona la opción "Ver detalle" sobre la vertical que desea visualizar del Formulario "Gestionar Verticales"
  #Entonces el sistema muestra la Ventana Emergente "Detalle de Vertical" con los siguientes datos: Vertical, Descripción, Id Vertical, Estado, Fecha creación, Fecha última modificación y Categorías actuales

  Escenario: Cerrar Detalle
    Dado que el usuario requiere cerrar la ventana de vista del detalle de la vertical
    Cuando el usuario abre la ventana de ver detalle
    Entonces el sistema cierra la ventana emergente de detalle de vertical y retorna al Formulario Gestionar Verticales (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0002_Gestionar Verticales)