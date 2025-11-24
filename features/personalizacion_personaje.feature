Feature: Personalización Base de Personaje
  Como jugador creativo
  Quiero personalizar la especie, clase y vestimenta de mi avatar
  Para tener una identidad única dentro del juego

  Background:
    Given que el usuario ha iniciado sesión en el juego
    And que el usuario ha navegado a la pantalla de "Creación de Personaje"
    And que los modelos 3D de las especies y ropas están cargados correctamente

  @visual_feedback
  Scenario: En el que el personaje se transforma en Orco
    Given que la especie seleccionada actualmente es "Humano"
    When el usuario selecciona la opción "Orco" en el panel de especies
    Then el modelo 3D en el centro de la pantalla debe actualizarse inmediatamente
    And la apariencia del personaje debe mostrar las características visuales de un Orco

  @visual_feedback_item
  Scenario: En el que el personaje se prueba un sombrero nuevo
    Given que el usuario tiene seleccionado un personaje compatible con sombreros
    When el usuario hace clic en el ítem "Sombrero de Mago" del inventario
    Then el objeto "Sombrero de Mago" debe aparecer renderizado sobre la cabeza del personaje

  @compatibility_rule
  Scenario: En el que el Mago intenta usar armadura pesada
    Given que el usuario ha seleccionado la clase "Mago"
    When el usuario intenta equipar el ítem "Armadura de Placas de Acero"
    Then el sistema debe bloquear la acción de equipamiento
    And el ítem debe mostrarse visualmente como "Incompatible" o deshabilitado

  @persistence
  Scenario: En el que el usuario guarda su creación y vuelve mañana
    Given que el usuario ha configurado un "Elfo" de clase "Arquero" con "Túnica Verde"
    When el usuario hace clic en el botón "Confirmar y Guardar"
    Then la base de datos debe registrar la combinación exacta de IDs seleccionados
    And al reiniciar el juego el personaje debe aparecer vestido exactamente igual