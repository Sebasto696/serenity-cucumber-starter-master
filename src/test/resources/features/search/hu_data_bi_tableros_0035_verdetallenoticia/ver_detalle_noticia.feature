# language: es

Característica: Ver detalle Noticia

    Como usuario Administrador Interno
    Quiero visualizar el detalle de las noticias creadas
    Para conocer la información completa de una noticia en el portal


    Escenario: Ver detalle Noticia
        Dado que el usuario requiere visualizar el detalle de una noticia creada
        Cuando el usuario selecciona la opción “Ver detalle” sobre la noticia que desea visualizar del Formulario Noticias del sitio (Descrito en HU_DATA & BI_TABLEROS_0032_Gestionar Noticias)
        Entonces el sistema muestra la Ventana Emergente “Detalle Noticia en pantalla principal” con los datos y validaciones definidas en “Formulario Detalle Noticia”.

    Escenario: Cerrar detalle Noticia
        Dado que el usuario requiere cerrar la ventana de vista del detalle de la noticia
        Cuando el usuario selecciona la opción cerrar de la ventana Detalle Noticia en pantalla principal
        Entonces el sistema cierra la ventana emergente de detalle del producto y retorna al Formulario Noticias del sitio (Descrito en HU_DATA & BI_TABLEROS_0032_Gestionar Noticias)
