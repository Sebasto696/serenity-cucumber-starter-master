# language: es

Característica: Ver Detalle Tablero


  Como usuario Administrador Interno
  Quiero visualizar el detalle de los tableros creados
  Para conocer la información completa de un tableros en el portal

  
  Escenario: Mostrar Detalle del Tablero
    Dado que el usuario requiere visualizar el detalle de un tablero
    Cuando el usuario selecciona la opción “Ver detalle” sobre el tablero que desea visualizar del Formulario Gestionar Tableros (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0011_Gestionar Tableros)
    Entonces el sistema muestra la Ventana Emergente “Detalle Tablero” con los datos y validaciones definidas en “Formulario Detalle Tablero”.

    #Ejemplo:
    #Dado que el usuario está en el Formulario Gestionar Tableros y hay al menos un Tablero existente
    #Cuando el usuario Administrador Interno selecciona la opción “Ver detalle” sobre el Tablero deseado
    #Entonces el sistema muestra la Ventana Emergente “Detalle Tablero” con los siguientes datos: Miniatura del tablero, Nombre del Tablero, Descripción Tablero, Id Tablero, Producto, Vertical, Categoría, Estado, URL, Fecha creación, Fecha última modificación, Cantidad de visualización y Vista publica

  Escenario: Cerrar Detalle del Tablero
    Dado que el usuario requiere cerrar la ventana de vista del detalle del tablero
    Cuando el usuario selecciona la opción cerrar de la ventana Detalle Tablero
    Entonces el sistema cierra la ventana emergente de detalle del tablero y retorna al Formulario Gestionar Tableros (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0011_Gestionar Tableros)

    #Ejemplo:
    #Dado que el usuario Administrador Interno está visualizando el detalle de un Tablero
    #Cuando el usuario selecciona la opción "Cerrar" de la ventana Detalle Tablero
    #Entonces el sistema cierra la ventana emergente de detalle del Tablero
    #Y el sistema vuelve al "Formulario Gestionar Tableros"