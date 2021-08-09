require_relative 'config/application'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

# http://127.0.0.1:4567
get '/' do
  @restaurants = Restaurant.all

  erb :index
end

# # http://127.0.0.1:4567/test
# get '/test' do
#   'This is a test page'
# end

# /restaurants/1
# /restaurants/6
# /restaurants/30
get '/restaurants/:id' do
  params[:id]

  @restaurant = Restaurant.find(params[:id])

  erb :show
end
