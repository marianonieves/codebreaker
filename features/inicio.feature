Feature: Inicio de la aplicación 

    Scenario: - - - - Bienvenido
    When inicio la aplicación
    Then muestra "Bienvenido a Codebreaker"


    Scenario: Bug no puede arriesgar si es vacío aunque el Numero ganador es vacio
    Given inicio la aplicación
    Given Asigno numero secreto ""
    When arriesga ""
    Then muestra mensaje "El número no es valido"

    Scenario: un numero de 3 cifras es inválido
    Given inicio la aplicación
    Given Asigno numero secreto ""
    When arriesga "123"
    Then muestra mensaje "El número no es valido"

    Scenario: Número de 4 cifras y que TODOS coincidan
    Given inicio la aplicación
    Given Asigno numero secreto "1256"
    When arriesga "1256"
    Then muestra mensaje "GANASTE: 1256"


    Scenario: Número de 4 cifras y que NINGUNO coincida
    Given inicio la aplicación
    Given Asigno numero secreto "1111"
    When arriesga "2222"
    Then muestra mensaje "2222 es Incorrecto: ____"


    Scenario: Que me indique si el número está
    Given inicio la aplicación
    Given Asigno numero secreto "4156"
    When arriesga "0123"
    Then muestra mensaje "0123 es Incorrecto: _1__"


    Scenario: Que me indique si el numero está en el lugar correcto
    Given inicio la aplicación
    Given Asigno numero secreto "1256"
    When arriesga "0235"
    Then muestra mensaje "0235 es Incorrecto: _2_!"
