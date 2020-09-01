require './lib/codebreaker'

describe Codebreaker do

    myCodebreaker = Codebreaker.new()

   it "Validar que el rspec funcione con un Hello World" do
       expect( myCodebreaker.hello() ).to match /Hello World/
   end
end
