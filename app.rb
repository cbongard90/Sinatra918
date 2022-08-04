require "sinatra"
require "sinatra/reloader" if development?
require "sinatra/activerecord"
require "pry-byebug"
require "better_errors"
require_relative "config/application"

get "/" do
  @restaurants = Restaurant.all
  erb :index
end

get "/restaurants/:id" do
  # restaurant/params[:id]
  # get the params and store it in a variable
  restaurant_id = params[:id]
  @restaurant = Restaurant.find(restaurant_id)
  # create a show page
  erb :show
end
