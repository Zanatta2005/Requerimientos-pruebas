Feature: Descripción Opcional de la Tarea
  Como usuario organizado
  Quiero añadir detalles opcionales a mis tareas
  Para no olvidar el contexto específico sin estar obligado a escribir siempre

  Background:
    Given que el usuario ha iniciado sesión correctamente
    And que el usuario se encuentra en el formulario de creación de tarea
    And que el campo de "Título" ya ha sido completado con un valor válido

  @happy_path
  Scenario: En el que el usuario añade una nota rápida
    Given que el usuario tiene una descripción breve de 50 caracteres
    When el usuario guarda la tarea incluyendo dicha descripción
    Then la tarea debe persistirse exitosamente en la base de datos
    And el texto guardado debe coincidir exactamente con lo ingresado

  @optionality
  Scenario: En el que el usuario guarda silencio
    Given que el usuario decide no escribir nada en el campo de descripción
    When el usuario hace clic en el botón de guardar tarea
    Then la tarea debe crearse exitosamente sin errores de validación
    And el campo de descripción de la tarea debe ser nulo o vacío

  @edge_case
  Scenario: En el que el usuario escribe una novela entera
    Given que el usuario ha pegado un texto que excede los 500 caracteres permitidos
    When el usuario intenta guardar la tarea
    Then el sistema debe impedir la creación de la tarea
    And se debe mostrar un mensaje de error indicando "La descripción es demasiado larga"
    And el formulario debe permanecer abierto para permitir correcciones

  @formatting
  Scenario: En el que el usuario hace una lista de compras
    Given que el usuario ha redactado una descripción con múltiples saltos de línea
    When el usuario guarda la tarea con dicho formato
    Then la tarea debe guardarse correctamente
    And al visualizar la tarea el sistema debe respetar los saltos de línea originales