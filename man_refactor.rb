require 'sinatra'
require 'pry'
require 'shotgun'

get '/main_menu' do
  params[:message]
  erb :main_menu
end

get '/mans' do
  params[:message]
erb :mans
end

post '/main_menu' do
 params[:message]
 erb :main_menu
end
