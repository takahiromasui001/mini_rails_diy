require_relative 'application_controller'

class HomeController < ApplicationController
  def index
    render plain: 'test index'
  end
end
