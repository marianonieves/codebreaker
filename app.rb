require 'sinatra'
require './config'
require './lib/codebreaker'

codebreaker= nil
codebreaker = Codebreaker.new

get '/hello' do
    codebreaker.hello   
end

get '/' do
    erb :index
end

post '/' do
   @mensaje= codebreaker.arriesgar 8
    erb :index
end

# ruby app.rb