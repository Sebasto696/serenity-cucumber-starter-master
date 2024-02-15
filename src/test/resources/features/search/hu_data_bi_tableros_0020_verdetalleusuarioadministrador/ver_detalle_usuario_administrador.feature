# language: es

Característica: Ver detalle Usuario Administrador

  Como usuario Administrador Interno
  Quiero visualizar el detalle de los usuarios administradores creados
  Para conocer la información completa de los usuarios administradores en el portal


  Escenario: Ver Detalle de Usuario Administrador
    Dado que el usuario requiere visualizar el detalle de un Usuario Administrador
    Cuando el usuario selecciona la opción “Ver detalle” sobre el usuario administrador que desea visualizar del Formulario Gestionar Cliente (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0017_Gestionar Clientes)
    Entonces el sistema muestra la Ventana Emergente “Detalle Usuario Administrador” con los datos y validaciones definidas en “Formulario Detalle Usuario Administrador”

    #Ejemplo:
    #Dado que el usuario está en el Formulario Usuarios Administradores
    #Cuando el usuario selecciona la opción “Ver detalle” sobre un Usuario Administrador de tipo Empresa
    #Entonces el sistema muestra la Ventana Emergente “Detalle Usuario Administrador” con los siguientes datos: Tipo de Cliente, Numero Documento, Nombres, Apellidos, Teléfono Celular, Correo Eléctronico, Tipo de Cliente, Empresa, Estado, Verticales, Cantidad Productos, Cantidad Tableros, Fecha creación y Fecha última modificación

    #Ejemplo:
    #Dado que el usuario está en el Formulario Usuarios Administradores
    #Cuando el usuario selecciona la opción “Ver detalle” sobre un Usuario Administrador de tipo Organismo de Tránsito
    #Entonces el sistema muestra la Ventana Emergente “Detalle Usuario Administrador” con los siguientes datos: Tipo de Cliente, Numero Documento, Nombres, Apellidos, Teléfono Celular, Correo Eléctronico, Tipo de Cliente, Organismo de transito, DIVIPO, Estado, Verticales, Cantidad Productos, Cantidad Tableros, Fecha creación y Fecha última modificación

  Escenario: Cerrar Detalle Usuario Administrador
    Dado que el usuario requiere cerrar la ventana de vista del detalle del usuario administrador
    Cuando el usuario selecciona la opción cerrar de la ventana Detalle Usuario Administrador
    Entonces el sistema cierra la ventana emergente de Detalle Usuario Administrador y retorna al Formulario Gestionar Usuario Administrador (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0017_Gestionar Clientes)

    #Ejemplo:
    #Dado que el usuario está visualizando el detalle de un Usuario Administrador
    #Cuando el usuario selecciona la opción "cerrar" en la ventana Detalle Usuario Administrador
    #Entonces el sistema cierra la ventana emergente de Detalle Usuario Administrador
    #Y el sistema vuelve al Formulario Usuario Administrador
