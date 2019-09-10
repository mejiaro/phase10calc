module Sinatra
  module Phase10Calc
    module Routing
      module Home
        def self.registered(app)

          home = lambda do 
            erb :index
          end

          app.get '/', &home
        end
      end
    end
  end
end