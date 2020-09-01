require 'sinatra'
require './config'
require './lib/codebreaker'

codebreaker = Codebreaker.new()
get '/hello' do
    codebreaker.hello   
end
get '/' do
    "Bienvenido a Codebreaker"
end

# ruby app.rb