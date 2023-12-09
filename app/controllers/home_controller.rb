require 'active_support/all'
require 'abstract_controller'
require 'action_controller'
require 'action_controller/metal'
require 'action_controller/base'

class HomeController < ActionController::Base
  def index
    render plain: 'test index'
  end
end
