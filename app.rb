require 'sinatra'
require './config'
require './lib/codebreaker'
require './lib/logero'


codebreaker= nil
codebreaker = Codebreaker.new

get '/hello' do
    codebreaker.hello   
end

get '/' do
    Logero.log("app.rb","estoy en GET de /")
    erb :index
end

get '/inicio/:secretNumber' do |secretNumber|
    Logero.log("app.rb","get de secretNumber= #{secretNumber}")
    codebreaker.definoNumeroGanador( secretNumber )
end


post '/' do
    puts "app :: estoy en POST de /"
    if params[:numero]
        @mensaje= codebreaker.arriesgar params[:numero]
    end
    erb :index
end


# ruby app.rb