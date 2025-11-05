Feature: Recuperación de contraseña para persona natural

Scenario: Usuario olvida su contraseña
  Given el usuario está en la pantalla de inicio de sesión
  When hace clic en "¿Olvidaste tu contraseña?" y selecciona "Persona Natural"
  Then se muestra el flujo de recuperación de contraseña para persona natural



Feature: Recuperación de contraseña para persona jurídica

Scenario: Usuario olvida su contraseña
  Given el usuario está en la pantalla de inicio de sesión
  When hace clic en "¿Olvidaste tu contraseña?" y selecciona "Persona Jurídica"
  Then se muestra el flujo de recuperación de contraseña para persona jurídica