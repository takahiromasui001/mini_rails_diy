class MiniRailsDiy
  attr_reader :routes, :application

  def initialize
    @routes = ActionDispatch::Routing::RouteSet.new
    routes = @routes
    @application = Rack::Builder.new do
      run routes
    end
  end

  def call(env)
    @application.call(env)
  end

  class << self
    attr_accessor :application
  end
end

MiniRailsDiy.application = MiniRailsDiy.new
