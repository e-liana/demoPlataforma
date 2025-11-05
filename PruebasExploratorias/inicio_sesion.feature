Feature: Navegación desde inicio de sesión a registro


 ##Flujo del caso, se ingresa a la pagina, primer pantalla es de inicio de sesion, se da clic en "Registrate",
  # se abre nueva pantalla con bienvenida, graficos, boton cancelar y opcion de seleccionar tipo de persona natural o juridica,
  # al final de la pagina se encuentra boton para iniciar sesion y regresar a la pantalla anterior.
  # se selecciona tipo de persona, PARA PERSONA NATURAL  se abre pantalla de creacion de cuenta con boton de cancelar
  # se muesta formulario de registro " paso 1 de 2" botones de  marcacion para aceptacion de terminos y condiciones,
  # aviso de privacidad, declaracion de beneficiarios, y auitorizacion de tratamiento de datos personales.
  # contiene lista desplegable para la ciduad, campo de contrasena con ocultamient y finalmente boton de siguiente (paso 2 de 2)
  # tener en cuenta validacion de campos numericos, email, validacion de contrasena (mayuscula, minuscula, numero, caracter especial, minimo 8 caracteres)
  # enmascaramiento de contraseña (Aa1234567.) listas desplegables para ciudad, tipo de documento y tipo de via en direccion
  #se muestr ventana pop up de confirmacion de datos con cedula y correo opciones para modificar y confirmar
  # segundo paso es de verificacion de identidad por medio de envio de codigo al telefono registrado,
  # con opcion de modificar el numero ingresado, no recibiste le codigo y reenviar despues de 59 segundos


Scenario: Usuario accede a la pantalla de registro desde la pantalla de inicio de sesión
  Given el usuario está en la pantalla de inicio de sesión
  When hace clic en el botón "Regístrate"
  Then se muestra la pantalla de bienvenida con gráficos, botón cancelar, selector de tipo de persona y botón para regresar



Feature: Acceso al portal institucional Davivienda

Scenario: Usuario accede al portal Davivienda desde la pantalla de inicio
  Given el usuario está en la pantalla de inicio
  When hace clic en el logo o enlace de Davivienda
  Then se redirige al portal institucional en una nueva pestaña