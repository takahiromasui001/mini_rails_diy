require 'rack'
require 'action_dispatch'
require 'active_support/all'
require 'debug'
require './app/controllers/controller_list'

app = ActionDispatch::Routing::RouteSet.new
app.draw do
  get '/home', to: 'home#index'
end

run app
