require 'sinatra/base'

require_relative 'helpers'
require_relative 'routes/home'
require_relative 'routes/calculate'

class Phase10Calc < Sinatra::Base
  set :root, File.dirname(__FILE__)

  helpers Sinatra::Phase10Calc::Helpers

  register Sinatra::Phase10Calc::Routing::Home
  register Sinatra::Phase10Calc::Routing::Calculate

end