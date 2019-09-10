module Sinatra
  module Phase10Calc
    module Helpers
      SKIPS = ['s', 'S']
      WILDS = ['W', 'w']

      def calculate_penalty(score)
        sum = 0
        for card in score do
          card = verify_card(card)
          case card
          when 1..9
            sum = sum + 5
          when 10..12
            sum = sum + 10
          else
           sum = sum + card
          end
        end
        return sum
      end

      def verify_card(card)
        if SKIPS.include?(card)
          card = 15
        elsif WILDS.include?(card)
          card = 25
        else
          card = card.to_i
        end
      end

      def arrayify_score(score)
        score = score.split(',')
      end
    end
  end
end