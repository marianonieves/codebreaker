require './lib/logero'

# responde automáticamente las consultas en el sitio
class Codebreaker

    DEFAULT_SECRET_NUMBER = 0
    secretNumber = DEFAULT_SECRET_NUMBER

    def initialize
        definoNumeroGanador(DEFAULT_SECRET_NUMBER)
    end

    def hello
        "Hello World"
    end

    def definoNumeroGanador(numero)
        @secretNumber = numero
        Logero.log("codbreaker","definoNumeroGanador() es #{@secretNumber}")
    end


    def arriesgar(numero)
#    puts "DEBUG :::: codebreaker > arriesgar() secretNumber:#{@secretNumber} == numero:#{numero}"
        
        if ( numero.to_s =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/ )

            Logero.log("codbreaker","arriesgar() , secret=#{@secretNumber.to_s} , numero=#{numero.to_s}")

            if @secretNumber.to_s == numero.to_s
                "Número correcto: #{numero}"
            else
                "Número incorrecto: #{numero}"
            end
        else
            "El número no es valido"
        end

    end

end
