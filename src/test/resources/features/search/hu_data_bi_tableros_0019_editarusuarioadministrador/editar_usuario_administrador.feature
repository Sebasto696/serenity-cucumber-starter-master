# language: es

Característica: Editar Usuario Administrador

  Como usuario Administrador Interno
  Quiero editar datos de Usuarios Administradores
  Para realizar correcciones o actualizaciones de datos de los usuarios administraciones de clientes


  Escenario: Mostrar Formulario
    Dado que el usuario requiere editar datos de Usuarios Administradores existentes
    Cuando el usuario selecciona la opción “Editar” sobre el Usuario Administrador que se desea modificar del Formulario Usuarios Administradores (descrito en la historia de usuario HU_ DATA & BI_TABLEROS_0017_Gestionar Clientes)
    Entonces el sistema muestra el formulario “Crear o Editar Usuario Administrador” con los datos precargados y las validaciones definidas en “Formulario Crear o Editar Usuario Administrador”

    #Ejemplo:
    #Dado que el usuario requiere modificar información de un Usuario Administrador existente
    #Cuando el usuario Administrador Interno selecciona la opción "Editar" sobre el Usuario Administrador que desea modificar del Formulario Usuarios Administradores
    #Entonces el sistema muestra Formulario Crear o Editar Usuario Administrador con los datos precargados del Usuario Administrador seleccionado
    #Y el sistema muestra los siguientes campos habilitados para edición: Nombres, Apellidos, Correo eléctronico, Teléfono Celular, Tipo de cliente, Organismo de transito/Empresa y Estado

  Escenario: Editar Usuario Administrador Exitosamente
    Dado que el usuario requiere editar un Usuario Administrador de forma exitosa
    Cuando el realiza la modificación de uno o más datos de la pestaña “Datos Administrador”, o de la pestaña “Asociar Tableros” del Formulario Crear o Editar Usuario Administrador y selecciona la opción “Guardar”
    Entonces el sistema valida los datos de forma correcta mostrando mensaje de confirmación de la edición del Usuario Administrador, guarda la información del Usuario Administrador en sistema y muestra el registro actualizado en la tabla del formulario Gestionar Usuarios Administradores (descrito en la historia de usuario HU_ DATA & BI_TABLEROS_0017_Gestionar Clientes).

    #Ejemplo:
    #Dado que el usuario requiere editar un los datos de un Usuario Administrador
    #Cuando el usuario Administrador Interno realiza la edición de uno o más datos del Formulario Crear o Editar Usuario Administrador y selecciona la opción "Guardar"
    #Entonces el sistema valida que los datos sean correctos mostrando mensaje de confirmación de la edición del Usuario Administrador
    #Y guarda la información del Usuario Administrador en el sistema
    #Y muestra el registro actualizado en la tabla del formulario "Usuarios Administradores"

  Escenario: Obligatoriedad de Datos
    Dado que el usuario no ingresa información en uno o más campos obligatorios
    Cuando selecciona la opción “Guardar”
    Entonces el sistema emite mensaje de obligatoriedad de datos y no almacena la información.

    #Ejemplo:
    #Dado que el usuario no ha ingresado información en uno o más campos obligatorios para la edición de un Usuario Administrador en el Formulario Crear o Editar Usuario Administrador
    #Cuando el usuario selecciona la opción "Guardar" del Formulario Crear o Editar Usuario Administrador
    #Entonces el sistema emite un mensaje de obligatoriedad de datos
    #Y no almacena la información en el sistema

  Escenario: Cancelar Edición
    Dado que el usuario requiere cancelar la edición de datos de un Usuario Administrador
    Cuando el usuario se encuentra registrando datos del formulario “Crear o Editar Usuario Administrador” y selecciona la opción “Cancelar”
    Entonces el sistema no realiza almacenamiento de datos del Usuario Administrador y cierra la ventana emergente.

    #Ejemplo:
    #Dado que el usuario está editando datos de un Usuario Administrador en el Formulario Crear o Editar Usuario Administrador
    #Cuando el usuario Administrador Interno selecciona la opción “Cancelar”
    #Entonces el sistema no realiza almacenamiento de datos del Usuario Administrador
    #Y cierra el Formulario Crear o Editar Usuario Administrador
    #Y el sistema vuelve al "Formulario Usuarios Administradores"

    #Ejemplo:
    #Dado que el usuario está editando un Tablero en el Formulario Crear o Editar Usuario Administrador y no ha realizado ningún cambio en los datos del Usuario Administrador
    #Cuando el usuario Administrador Interno selecciona la opción “Cancelar”
    #Entonces el sistema no realiza almacenamiento de datos del Usuario Administrador
    #Y cierra el Formulario Crear o Editar Usuario Administrador
    #Y el sistema vuelve al "Formulario Usuarios Administradores"

  Escenario: Auditoria
    Dado que se requiere guardar la auditoría de edición de datos de un Usuario Administrador
    Cuando el usuario edita un Usuario Administrador
    Entonces el sistema identifica y almacena los datos definidos en “Datos Auditoria”

    #Ejemplo:
    #Dado que se requiere guardar la auditoría de edición de datos de un Usuario Administrador
    #Cuando el usuario Administrador Interno edita uno o mas datos de un Usuario Administrador existente
    #Entonces el sistema identifica y almacena los siguientes datos: Tabla, Id Usuario, Proceso, Fecha creación, Fecha última modificación, Usuario modificador, Dato anterior y Dato nuevo

  Escenario: Duplicidad de Registro
    Dado que se requiere evitar el registro duplicado de Usuarios Administradores
    Cuando el usuario realiza la edición de un Usuario Administrador y selecciona la opción Guardar
    Entonces el sistema valida los datos y encuentra un Usuario Administrador creado con los mismos datos, muestra el correspondiente mensaje informativo de duplicidad y no almacena la información. Los datos que se validan para duplicidad de Usuarios Administradores están definidos en el “Formulario Crear o Editar Usuario Administrador”

    #Ejemplo:
    #Dado que se requiere evitar el registro duplicado de Usuarios Administradores Cliente
    #Cuando el usuario Administrador Interno realiza la edición de datos de un Usuario Administrador y selecciona la opción "Guardar"
    #Entonces el sistema valida los datos encontrando un Usuario Administrador Cliente creado con los mismos valores
    #Y muestra el correspondiente mensaje informativo de duplicidad
    #Y no almacena la información del Usuario Administrador Cliente en el sistema

  Escenario: Editar Opciones de Menú
    Dado que se requiere editar las opciones de menú asociadas al Usuario Administrador
    Cuando el usuario se encuentra editando un Usuario Administrador y selecciona la opción “Siguiente” en la pestaña “Asociar Tableros”
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0025_Asociar Opciones de menú a Administrador
