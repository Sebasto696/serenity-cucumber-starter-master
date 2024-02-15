# language: es

Característica: Crear Usuario Administrador

  Como usuario Administrador Interno
  Quiero crear nuevos Usuarios Administradores
  Para habilitar la gestión del portal a usuarios administraciones de clientes


  Escenario: Mostrar Formulario
    Dado que el usuario requiere crear nuevos Usuarios Administradores
    Cuando el usuario selecciona la opción “Crear Usuario” del Formulario Usuarios Administradores (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0017_Gestionar Clientes)
    Entonces el sistema muestra el formulario “Crear o Editar Usuario Administrador” con sus diferentes pestañas y con los datos y validaciones definidas en “Formulario Crear o Editar Usuario Administrador”

    #Ejemplo:
    #Dado que el usuario requiere crear nuevos Usuarios Administradores
    #Cuando el usuario Administrador Interno selecciona la opción "Crear Usuario" del Formulario "Usuarios Administradores"
    #Entonces el sistema muestra Formulario Crear o Editar Usuario Administrador
    #Y el formulario contiene las pestañas "Datos Administrador", "Asociar Tableros" y "Asociar Menú"

  Escenario: Crear Usuario Administrador Exitosamente
    Dado que el usuario requiere crear un nuevo Usuario Administrador de forma exitosa
    Cuando el usuario realiza el registro de los datos obligatorios de la pestaña “Datos Administrador” (Ver: Prototipo), selecciona la opción “Siguiente” y realiza el registro de los datos obligatorios de la pestaña “Asociar Tableros” (Ver: Prototipo) del formulario “Formulario Crear o Editar Usuario Administrador” y selecciona la opción “Guardar”
    Entonces el sistema valida los datos de forma correcta mostrando mensaje de confirmación de la creación del nuevo Usuario Administrador, guarda la información del Usuario Administrador en sistema y muestra el nuevo registro en la tabla del formulario Gestionar Usuarios Administradores (descrito en la historia de usuario HU_DATA & BI_TABLEROS_0017_Gestionar Clientes).

    #Ejemplo:
    #Dado que el usuario Administrador Interno requiere crear nuevos Usuarios Administradores para Tipo de Cliente Empresa
    #Cuando el usuario se encuentra registrando los campos de la "Pestaña Datos Administrador" y selecciona en la lista Tipo de Cliente el dato "Empresa"
    #Entonces el sistema habilita la lista de selección Empresa con las Empresas registradas

    #Ejemplo:
    #Dado que el usuario Administrador Interno requiere crear nuevos Usuarios Administradores para Tipo de Cliente Organismo de Tránsito
    #Cuando el usuario se encuentra registrando los campos de la "Pestaña Datos Administrador" y selecciona en la lista Tipo de Cliente el dato " Organismo de Transito"
    #Entonces el sistema habilita la lista de selección Organismo de Transito con los organismos de tránsito registrados

    #Ejemplo:
    #Dado que el usuario está en el formulario “Crear o Editar Usuario Administrador”
    #Cuando el usuario Administrador Interno completa todos los campos obligatorios en la pestaña "Datos Administrador" registrando los datos para el Tipo de Cliente igual a Empresa
    #Y selecciona la opción Siguiente
    #Y el usuario asocia los tableros necesarios en la pestaña "Asociar Tableros" y selecciona la opción “Guardar”
    #Entonces el sistema valida los datos ingresados correctamente
    #Y el sistema crea el nuevo Usuario Administrador Cliente para la Empresa con los datos proporcionados mostrando mensaje de confirmación
    #Y el sistema muestra el nuevo Usuario Administrador en el formulario "Usuarios Administradores"

  Escenario: Obligatoriedad de Datos
    Dado que el usuario no ingresa información en uno o más campos obligatorios
    Cuando selecciona la opción “Guardar”
    Entonces el sistema emite mensaje de obligatoriedad de datos y no almacena la información.

    #Ejemplo:
    #Dado que el usuario no ha ingresado información en uno o más campos obligatorios para la creación de un Usuario Administrador Cliente
    #Cuando el usuario Administrador Interno selecciona la opción "Guardar"
    #Entonces el sistema emite un mensaje de obligatoriedad de datos
    #Y no almacena la información en el sistema

  Escenario: Cancelar Creación
    Dado que el usuario requiere cancelar la creación de un nuevo Usuario Administrador
    Cuando el usuario se encuentra registrando datos del formulario “Crear o Editar Usuario Administrador” y selecciona la opción “Cancelar”
    Entonces el sistema no realiza almacenamiento de datos del Usuario Administrador y cierra la ventana emergente.

    #Ejemplo:
    #Dado que el usuario se encuentra registrando datos del “Formulario Crear o Editar Usuario Administrador”
    #Cuando el usuario Administrador Interno selecciona la opción "Cancelar"
    #Entonces el sistema no realiza almacenamiento de datos del Usuario Administrador Cliente
    #Y cierra el “Formulario Crear o Editar Usuario Administrador”

  Escenario: Auditoria
    Dado que se requiere guardar la auditoría de creación de un Usuario Administrador
    Cuando el usuario crea de un nuevo Usuario Administrador
    Entonces el sistema identifica y almacena dos datos definidos en “Datos Auditoria”

    #Ejemplo:
    #Dado que el usuario Administrador Interno ha creado un nuevo Usuario Administrador Cliente
    #Cuando el sistema guarda la información del Usuario Administrador Cliente
    #Entonces el sistema identifica y almacena los siguientes datos: Tabla, Id usuario, Proceso, Fecha creación, Fecha última modificación, Usuario modificador, Dato anterior y Dato nuevo

  Escenario: Duplicidad de Registro
    Dado que se requiere evitar el registro duplicado de Usuarios Administradores
    Cuando el usuario realiza el registro de un Usuario Administrador y selecciona la opción Guardar
    Entonces el sistema valida los datos y encuentra un Usuario Administrador creado con los mismos datos, muestra el correspondiente mensaje informativo de duplicidad y no almacena la información. Los datos que se validan para duplicidad de Usuarios Administradores están definidos en el “Formulario Crear o Editar Usuario Administrador”

    #Ejemplo:
    #Dado que se requiere evitar el registro duplicado de Usuarios Administrador Cliente
    #Cuando el usuario Administrador Interno realiza el registro de un nuevo Usuario Administrador Cliente y selecciona la opción "Guardar"
    #Entonces el sistema valida los datos encontrado un Usuario Administrador Cliente creado con los mismos valores, muesta el correspondiente mensaje informativo de duplicidad
    #Y no almacena la información del Usuario Administrador Cliente duplicado en el sistema

  Escenario: Asociar Opciones de Menú
    Dado que se requiere asociar las opciones de menú al Usuario Administrador creado
    Cuando el usuario crea de un nuevo Usuario Administrador y selecciona la opción Siguiente en la pestaña “Asociar Tableros”
    Entonces el sistema ejecuta la historia de usuario HU_DATA & BI_TABLEROS_0025_Asociar Opciones de menú a Administrador
