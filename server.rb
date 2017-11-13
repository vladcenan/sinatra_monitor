# server.rb
require 'sinatra'

set :bind, '0.0.0.0'

get '/' do  
  erb :index
end

get '/healthcheck/:env' do
  File.read(File.join('healthcheck', "#{params[:env]}.html"))
end

get '/sanity/:env' do
  File.read(File.join('sanity', "#{params[:env]}.log"))
end
