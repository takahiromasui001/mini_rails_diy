require 'rack'
require 'bundler/setup'
require 'action_dispatch'
require 'debug'
require_relative 'app/controllers/home_controller'

app = ActionDispatch::Routing::RouteSet.new
app.draw do
  get '/home', to: 'home#index'
end

run app
