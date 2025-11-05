Feature: Acceso al registro desde la pantalla de inicio

Scenario: Usuario hace clic en el botón "Regístrate"
  Given el usuario está en la pantalla de inicio de sesión
  When hace clic en el botón "Regístrate"
  Then se muestra la pantalla de bienvenida con opciones de tipo de persona



Feature: Cancelación del proceso de registro

Scenario: Usuario cancela el registro desde la pantalla de bienvenida
  Given el usuario está en la pantalla de bienvenida
  When hace clic en el botón "Cancelar"
  Then el sistema lo redirige a la pantalla de inicio de sesión



Feature: Selección de tipo de persona

Scenario: Usuario selecciona persona natural
  Given el usuario está en la pantalla de bienvenida
  When selecciona "Persona Natural"
  Then se muestra la pantalla de creación de cuenta con formulario paso 1 de 2

Scenario: Usuario selecciona "Persona Jurídica"
  Given el usuario está en la pantalla de bienvenida
  When selecciona "Persona Jurídica"
  Then se muestra el formulario de registro correspondiente para persona jurídica



Feature: Registro completo para persona natural

Scenario: Usuario completa el registro como persona natural
  Given el usuario ha seleccionado "Persona Natural"
  And ha llenado el formulario paso 1 de 2 correctamente
  When confirma sus datos en el pop-up
  And verifica su identidad con el código enviado
  Then el sistema crea la cuenta y muestra mensaje de éxito



Feature: Registro completo para persona jurídica

Scenario: Usuario completa el registro como persona jurídica
  Given el usuario ha seleccionado "Persona Jurídica"
  And ha llenado el formulario correspondiente
  When confirma sus datos y verifica identidad
  Then el sistema crea la cuenta y muestra mensaje de éxito