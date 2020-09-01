require './lib/codebreaker'

describe Codebreaker do

    myCodebreaker = Codebreaker.new()

    it "Validar que el rspec funcione con un Hello World" do
        expect( myCodebreaker.hello() ).to match /Hello World/
    end

    it "Adivinar un número de una cifra 5 y que NO coincida porque arriesgo 8" do
        myCodebreaker.definoNumeroGanador(5)
        expect( myCodebreaker.arriesgar(8) ).to match /Número incorrecto: 8/
    end

    it "Adivinar un número de una cifra 6 y que SI coincida porque arriesgo 6" do
        myCodebreaker.definoNumeroGanador(6)
        expect( myCodebreaker.arriesgar(6) ).to match /Número correcto: 6/
    end

    it "Bug no puede arriesgar si es vacío aunque el Numero ganador es vacio" do
        myCodebreaker.definoNumeroGanador('')
        expect( myCodebreaker.arriesgar('') ).to match /El número no es valido/
    end

    
# Scenario: Número de 4 cifras y Que todos coincidan

# Scenario: Número de 4 cifras y que ninguno coincida

# Scenario: Que me indique si el número está

# Scenario: Que me indique si el numero está en el lugar correcto


end
