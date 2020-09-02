class Logero

  @@enable=false
  
  def self.log(context, message)
    if(@@enable)
      puts "- - - -> LOG ::: #{context} :: #{message}"
    end
  end

end

# Logero.log("name of the file","texto para loguear ")s