Feature: Inicio de la aplicación 

    Scenario: Inicio
    When inicio la aplicación
    Then muestra "Hello World"

    Scenario: Bienvenido
    When inicio la aplicación
    Then muestra "Bienvenido a Codebreaker"
