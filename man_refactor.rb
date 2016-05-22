require 'sinatra'
require 'pry'

get '/main_menu' do
  erb :main_menu
end

get '/mans' do
  erb :mans
end

get '/cp' do
  erb :cp
end

get '/mv' do
  erb :mv
end

get '/cd' do
  erb :cd
end

post '/main_menu' do
  message = params[:message]
  if message.to_i == 1
    redirect '/mans'
  elsif message.to_i == 2
    redirect 'https://www.google.com'
  else
    redirect '/main_menu'
  end
  erb :main_menu
end

post '/mans' do
  @mans = params[:selection]
  if @mans.to_i == 1
    redirect '/cp'
  elsif @mans.to_i == 2
    redirect '/mv'
  elsif @mans.to_i == 3
    redirect '/cd'
  elsif @mans.to_i == 4
    redirect '/main_menu'
  else
    redirect '/mans'
  end
  erb :mans
end
