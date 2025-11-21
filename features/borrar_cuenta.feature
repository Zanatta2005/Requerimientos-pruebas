Feature: Borrar Cuenta de Usuario
  Como jugador
  Quiero eliminar permanentemente mi cuenta
  Para borrar mis datos personales y progreso del sistema

  Background:
    Given que el usuario ha iniciado sesión en la aplicación
    And que el usuario ha navegado a la pantalla de configuración
    And que el modal de advertencia "Eliminar Cuenta" está visible en pantalla

  @happy_path
  Scenario: En el que el usuario recuerda su contraseña correctamente y borra todo
    Given que la base de datos está operativa
    When el usuario confirma la eliminación ingresando su contraseña actual correcta
    Then el sistema debe eliminar permanentemente todos los registros del usuario
    And la sesión actual debe cerrarse automáticamente
    And el usuario debe ser redirigido a la pantalla de "Login"

  @error_path
  Scenario: En el que el usuario se equivoca de contraseña
    Given que el usuario intenta validar su identidad
    When el usuario intenta confirmar la eliminación ingresando una contraseña incorrecta
    Then el sistema debe mostrar un mensaje de error indicando "Contraseña inválida"
    And la cuenta del usuario debe permanecer activa en el sistema
    And el modal de confirmación debe permanecer abierto

  @alternative_path
  Scenario: En el que el usuario se arrepiente en el último segundo
    Given que el usuario decide no continuar con el proceso
    When el usuario hace clic en el botón "Cancelar" del modal
    Then el modal de advertencia debe cerrarse
    And el usuario debe permanecer en la pantalla de configuración
    And no se debe realizar ningún cambio en la base de datos