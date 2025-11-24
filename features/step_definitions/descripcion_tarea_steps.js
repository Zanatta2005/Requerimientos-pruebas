const { Given, When, Then } = require('@cucumber/cucumber');

Given('que el usuario ha iniciado sesión correctamente', function () {
  return 'pending';
});

Given('que el usuario se encuentra en el formulario de creación de tarea', function () {
  return 'pending';
});

Given('que el campo de {string} ya ha sido completado con un valor válido', function (campo) {
  return 'pending';
});


Given('que el usuario tiene una descripción breve de {int} caracteres', function (cantidad) {
  // Contexto: Preparar string de prueba
  return 'pending';
});

When('el usuario guarda la tarea incluyendo dicha descripción', function () {
  // Acción: Click en Guardar
  return 'pending';
});

Then('la tarea debe persistirse exitosamente en la base de datos', function () {
  // Verificación: DB check
  return 'pending';
});

Then('el texto guardado debe coincidir exactamente con lo ingresado', function () {
  // Verificación: Comparación de strings
  return 'pending';
});

Given('que el usuario decide no escribir nada en el campo de descripción', function () {
  // Contexto: Campo vacío
  return 'pending';
});

When('el usuario hace clic en el botón de guardar tarea', function () {
  // Acción: Click en Guardar (separado para este contexto)
  return 'pending';
});

Then('la tarea debe crearse exitosamente sin errores de validación', function () {
  // Verificación: No errores
  return 'pending';
});

Then('el campo de descripción de la tarea debe ser nulo o vacío', function () {
  // Verificación: Valor Null/Empty
  return 'pending';
});

Given('que el usuario ha pegado un texto que excede los {int} caracteres permitidos', function (limite) {
  // Contexto: String largo > 500
  return 'pending';
});

When('el usuario intenta guardar la tarea', function () {
  // Acción: Intento de submit
  return 'pending';
});

Then('el sistema debe impedir la creación de la tarea', function () {
  // Verificación: No se creó registro
  return 'pending';
});

Then('se debe mostrar un mensaje de error indicando {string}', function (mensaje) {
  // Verificación: UI Feedback
  return 'pending';
});

Then('el formulario debe permanecer abierto para permitir correcciones', function () {
  // Verificación: Estado UI
  return 'pending';
});

Given('que el usuario ha redactado una descripción con múltiples saltos de línea', function () {
  // Contexto: String con \n
  return 'pending';
});

When('el usuario guarda la tarea con dicho formato', function () {
  // Acción: Submit con formato
  return 'pending';
});

Then('la tarea debe guardarse correctamente', function () {
  // Verificación: Éxito general
  return 'pending';
});

Then('al visualizar la tarea el sistema debe respetar los saltos de línea originales', function () {
  // Verificación: Visualización correcta
  return 'pending';
});