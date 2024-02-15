# language: es

Característica: Ver tableros por producto

  Como Usuario
  Quiero poder visualizar e identificar los tableros disponibles asociados a un producto
  Para observar la información de un tablero seleccionado


  Escenario: Ver tableros por producto
    Dado que el usuario requiere visualizar los tableros asociados a un producto
    Cuando el usuario selecciona un producto de la pantalla de portafolio de productos (descrita en la historia de usuario HU_DATA & BI_TABLEROS_0048_Ver Portafolio de productos)
    Entonces el sistema muestra el “Formulario Tableros por Producto”, si el producto no esta activo o no cuenta con tableros asociados muestra mensaje con descripción y opción de “Conoce más” (descrita en la historia de usuario HU_DATA & BI_TABLEROS_0048_Ver Portafolio de productos)

  Escenario: Abrir tablero
    Dado que el usuario requiere visualizar un tablero a detalle
    Cuando el usuario selecciona el tablero del “Formulario Tableros por Producto”
    Entonces el sistema extiende dentro del mismo Formulario Tableros por Producto, el tablero seleccionado

  Escenario: Contador de visualizaciones
    Dado que se requiere identificar la cantidad de visualizaciones que tiene un tablero
    Cuando el usuario abre un tablero
    Entonces el sistema incrementa y muestra un Contador de visualizaciones del tablero.

  Escenario: Descargar tablero
    Dado que el usuario requiere descargar un tablero
    Cuando el usuario abre un tablero y selecciona la opción “Descargar”
    Entonces el sistema permite realizar la descarga en formato pdf del tablero seleccionado.

  Escenario: Ampliar tablero
    Dado que el usuario requiere ampliar un tablero
    Cuando el usuario abre un tablero y selecciona la opción “Pantalla Completa”
    Entonces el sistema permite muestra en pantalla completa el tablero seleccionado, mostrando la opción de contraer o salir de pantalla completa.

