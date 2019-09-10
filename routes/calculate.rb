module Sinatra
  module Phase10Calc
    module Routing
      module Calculate
        def self.registered(app)

          calculate = lambda do
            score = arrayify_score(params['nums'])
            @nums = calculate_penalty(score) 
            erb :calculate
          end

          app.post '/calculate', &calculate
        end
      end
    end
  end
end