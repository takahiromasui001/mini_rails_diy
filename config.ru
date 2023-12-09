require 'rack'
require 'bundler/setup'
require 'action_dispatch'
require 'debug'
require 'active_support/all'
require './app/controllers/controller_list'

app = ActionDispatch::Routing::RouteSet.new
app.draw do
  get '/home', to: 'home#index'
end

run app
