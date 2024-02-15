# language: es

  Característica: Ver detalle usuarios empresa o ot

    Como usuario Administrador Cliente
    Quiero visualizar el detalle de los Usuarios existentes en el portal de mi Empresa/OT
    Para visualizar la información completa de un Usuario


    Escenario: Ver detalle Usuario
      Dado que el usuario requiere visualizar el detalle de un Usuario
      Cuando el usuario selecciona la opción “Ver detalle” sobre el usuario que desea visualizar del Formulario Gestión de Usuarios (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0043_Gestionar Usuarios Empresa_OT)
      Entonces el sistema muestra la Ventana Emergente “Detalle Usuario” con los datos y validaciones definidas en “Formulario Detalle Usuario ”.

      Escenario: Cerrar Detalle Usuario
        Dado que el usuario requiere cerrar la ventana de vista del detalle del usuario
        Cuando el usuario selecciona la opción cerrar de la ventana Detalle Usuario
        Entonces el sistema cierra la ventana emergente y retorna al Formulario Gestión de Usuarios (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0043_Gestionar Usuarios Empresa_OT)
