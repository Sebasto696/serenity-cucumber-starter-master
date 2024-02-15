# language: es

Característica: Ver detalle OT o Empresa

  Como usuario Administrador Interno
  Quiero visualizar el detalle de los Organismos de Tránsito y/o Empresas creados
  Para conocer la información completa de los clientes en el portal


  Escenario: Abrir el detalle
    Dado que el usuario requiere visualizar el detalle de un Organismo de Transito o Empresa
    Cuando el usuario selecciona la opción “Ver detalle” sobre el OT o Empresa que desea visualizar del “Formulario OT/ Empresa” (descrito en la historia de usuario HU_ DATA & BI_TABLEROS_0021_Gestionar OT o Empresa)
    Entonces el sistema muestra la Ventana Emergente “Detalle OT o Empresa” con los datos y validaciones definidas en “Detalle OT” o “Detalle Empresa”.

    Escenario: Cerrar el detalle OT o Empresa
      Dado que el usuario requiere cerrar la ventana de vista del detalle del OT o Empresa
      Cuando el usuario selecciona la opción cerrar de la ventana “Detalle OT o Empresa”
      Entonces el sistema cierra la ventana emergente de “Detalle OT o Empresa” y retorna al “Formulario OT/ Empresa” (descrito en la historia de usuario HU_ DATA & BI_TABLEROS_0021_Gestionar OT o Empresa)


