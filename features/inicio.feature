Feature: Inicio de la aplicación 

    Scenario: - - - - Inicio
    When inicio la aplicación
    Then muestra "Hello World"

    Scenario: - - - - Bienvenido
    When inicio la aplicación
    Then muestra "Bienvenido a Codebreaker"

#   Scenario: - - - - Adivinar un número de una cifra 5 y que NO coincida porque arriesgo 8
#   Given inicio la aplicación
#   Given Asigno numero secreto 5
#   When arriesga 8
#   Then muestra mensaje "Número incorrecto"

#   Scenario: - - - - Adivinar un número de una cifra 6 y que SI coincida porque arriesgo 6
#   Given inicio la aplicación
#   Given Asigno numero secreto 6
#   When arriesga 6
#   Then muestra mensaje "Número correcto: 6"



    Scenario: Número de 4 cifras y Que todos coincidan
    Given inicio la aplicación
    Given Asigno numero secreto 1256
    When arriesga 1256
    Then muestra mensaje "Número correcto: 1256"

    

# Scenario: Número de 4 cifras y que ninguno coincida

# Scenario: Que me indique si el número está

# Scenario: Que me indique si el numero está en el lugar correcto
