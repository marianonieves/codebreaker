Feature: Inicio de la aplicación 

    Scenario: Inicio
    When inicio la aplicación
    Then muestra "Hello World"

    Scenario: Bienvenido
    When inicio la aplicación
    Then muestra "Bienvenido a Codebreaker"

    Scenario: Arriesgo un numero y es incorrecto
    Given inicio la aplicación con numero secreto 4
    When arriesga 8
    Then muestra mensaje "Número incorrecto"
    