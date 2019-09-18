require_relative '../spec_helper'

describe 'Home Path' do
  describe 'GET /' do
    before { get '/' }

    it 'is successful' do
      expect(last_response.status).to eq 200
      expect(last_response.body).to include('This is a penalty calculator for Phase10')
    end
  end
end