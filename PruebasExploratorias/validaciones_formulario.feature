Feature: Validación de campos en el formulario de registro

Scenario Outline: Validación de campos obligatorios y formato
  Given el usuario está en el formulario de registro paso 1 de 2
  When ingresa <email>, <contraseña> y selecciona <ciudad>
  Then el sistema valida los campos y muestra <resultado>

Examples:
  | email              | contraseña     | ciudad     | resultado                      |
  | usuario@dominio.com | Aa1234567.     | Medellín   | Registro válido                |
  | usuario.com        | Aa1234567.     | Medellín   | Error en formato de email      |
  | usuario@dominio.com | 12345678       | Medellín   | Error en formato de contraseña |



Feature: Validación de contraseña segura

Scenario: Usuario ingresa contraseña que cumple con los requisitos
  Given el usuario está en el campo de contraseña
  When ingresa "Aa1234567."
  Then el sistema acepta la contraseña como válida

Scenario: Usuario ingresa contraseña sin carácter especial
  Given el usuario está en el campo de contraseña
  When ingresa "Aa12345678"
  Then el sistema muestra error indicando falta de carácter especial