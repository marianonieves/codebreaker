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

get '/reset' do
    Logero.log("app.rb","estoy en GET de /")
    codebreaker.resetSecretNumber()
    erb :index
end


get '/inicio/:secretNumber' do |secretNumber|
    Logero.log("app.rb","get de secretNumber= #{secretNumber}")
    codebreaker.setSecretNumber( secretNumber )
end


post '/' do
    puts "app :: estoy en POST de /"
    if params[:numero]
        @mensaje= codebreaker.arriesgar params[:numero]
        @secretNumber = codebreaker.getSecretNumber()
    end
    erb :index
end


# ruby app.rb