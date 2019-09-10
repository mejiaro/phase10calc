require_relative '../spec_helper'

describe 'Calculate Path' do
  describe 'POST /calculate a digit from 1-9' do
    before { post '/calculate', {nums: "1"}  }

    it 'is successful' do
      expect(last_response.status).to eq 200
      expect(last_response.body).to include('The score is: 5')
    end
  end

  describe 'POST /calculate a digit from 10-12' do
    before { post '/calculate', {nums: "10"}  }

    it 'is successful' do
      expect(last_response.status).to eq 200
      expect(last_response.body).to include('The score is: 10')
    end
  end

  describe 'POST /calculate a wild card ' do
    before { post '/calculate', {nums: "w"}  }

    it 'is successful' do
      expect(last_response.status).to eq 200
      expect(last_response.body).to include('The score is: 25')
    end
  end

  describe 'POST /calculate a skip card ' do
    before { post '/calculate', {nums: "s"}  }

    it 'is successful' do
      expect(last_response.status).to eq 200
      expect(last_response.body).to include('The score is: 15')
    end
  end
end