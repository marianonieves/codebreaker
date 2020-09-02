require './lib/logero'

# responde automáticamente las consultas en el sitio
class Codebreaker

    DEFAULT_SECRET_NUMBER = 1256
    secretNumber = DEFAULT_SECRET_NUMBER
    secretNumberArr = DEFAULT_SECRET_NUMBER.to_s.split('')

    def initialize
        resetSecretNumber()
    end

    def hello
        "Hello World"
    end

    def resetSecretNumber()
        numero = rand.to_s[2..5] 
        setSecretNumber(numero)
    end

    def setSecretNumber(numero)
        @secretNumber = numero
        @secretNumberArr = numero.to_s.split('')
#        Logero.log("codbreaker","setSecretNumber() es #{@secretNumber}")
    end

    def getSecretNumber()
        return @secretNumber
    end

    def validarNumero(numero)        
        if ( numero.to_s.length == 4 )
#            Logero.log("codbreaker","validarNumero() , #{numero.to_s} tiene cuatro digitos ")
            return true
        end

        return false
    end

    def detalleIncorrecto(numero)
        sNumero = numero.to_s
        aNumero = numero.to_s.split('')

        result = []
        for i in 0..3
            if @secretNumberArr[i]==aNumero[i]
                result.push(aNumero[i])
            else
                if @secretNumberArr.include? aNumero[i].to_s
                    result.push('!')
                else
                    result.push('_')
                end
            end
        end

        Logero.log("codbreaker","detalleIncorrecto() , secret=#{@secretNumber.to_s} , numero=#{sNumero}")
        "#{sNumero} es Incorrecto: #{result.join('')}"
    end

    def arriesgar(numero)
        
        if validarNumero(numero)

#            Logero.log("codbreaker","arriesgar() , secret=#{@secretNumber.to_s} , numero=#{numero.to_s}")

            if @secretNumber.to_s == numero.to_s
                "GANASTE: #{numero}"
            else
                return detalleIncorrecto(numero)
            end

        else
            "El número no es valido"
        end

    end

end
