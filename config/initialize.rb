require 'rack'
require 'action_dispatch'
require 'active_support/all'
require 'abstract_controller'
require 'action_controller'

require './mini_rails_diy'
require './config/routes'
Dir.glob('./app/controllers/**/*.rb').sort.each { |file| require file }
