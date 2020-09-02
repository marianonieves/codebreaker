require './lib/codebreaker'

describe Codebreaker do

    myCodebreaker = Codebreaker.new()

    it "Validar que el rspec funcione con un Hello World" do
        expect( myCodebreaker.hello() ).to match /Hello World/
    end

#    it "Adivinar un número de una cifra 5 y que NO coincida porque arriesgo 8" do
#        myCodebreaker.setSecretNumber(5)
#        expect( myCodebreaker.arriesgar(8) ).to match /Número incorrecto: 8/
#    end

#    it "Adivinar un número de una cifra 6 y que SI coincida porque arriesgo 6" do
#        myCodebreaker.setSecretNumber(6)
#        expect( myCodebreaker.arriesgar(6) ).to match /Número correcto: 6/
#    end

    it "Bug no puede arriesgar si es vacío aunque el Numero ganador es vacio" do
        myCodebreaker.setSecretNumber('')
        expect( myCodebreaker.arriesgar('') ).to match /El número no es valido/
    end

    it "Scenario: un numero de 3 cifras es inválido" do
        myCodebreaker.setSecretNumber('')
        expect( myCodebreaker.arriesgar('123') ).to match /El número no es valido/
    end

    it "Scenario: Número de 4 cifras y que TODOS coincidan" do
        myCodebreaker.setSecretNumber('1256')
        expect( myCodebreaker.arriesgar('1256') ).to match /GANASTE: 1256/
    end

    it "Scenario: Número de 4 cifras y que NINGUNO coincida" do
        myCodebreaker.setSecretNumber('1111')
        expect( myCodebreaker.arriesgar('2222') ).to match /2222 es Incorrecto: ____/
    end

    it "Scenario: Que me indique si el número está" do
        myCodebreaker.setSecretNumber('4156')
        expect( myCodebreaker.arriesgar('0123') ).to match /0123 es Incorrecto: _1__/
    end


    it "Scenario: Que me indique si el numero está en el lugar correcto" do
        myCodebreaker.setSecretNumber('1256')
        expect( myCodebreaker.arriesgar('0235') ).to match /0235 es Incorrecto: _2_!/
    end


end
