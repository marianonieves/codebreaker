# responde automáticamente las consultas en el sitio
class Codebreaker

    DEFAULT_SECRET_NUMBER = 0
    secretNumber = DEFAULT_SECRET_NUMBER

    def initialize
    end

    def hello
        "Hello World"
    end

    def definoNumeroGanador(numero)
        if numero
            @secretNumber = numero
        else
            @secretNumber = @DEFAULT_SECRET_NUMBER
        end
 #    puts "DEBUG :::: codebreaker > definoNumeroGanador() es #{@secretNumber.to_s}"
    end


    def arriesgar(numero)
#    puts "DEBUG :::: codebreaker > arriesgar() secretNumber:#{@secretNumber} == numero:#{numero}"
        if @secretNumber.to_i == numero.to_i
            "Número correcto: #{numero}"
        else
            "Número incorrecto: #{numero}"
        end
    end

end
