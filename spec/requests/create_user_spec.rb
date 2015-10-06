require 'rails_helper'

RSpec.describe 'User create', type: :request do
  context 'with good params' do
    let(:user_params) { { username: 'hintology' } }

    it 'creates a User' do
      post '/users', user: user_params
      expect(response.status).to eql 201
    end
  end

  context 'with bad params' do
    let(:user_params) { { some: 'huynya' } }

    it 'does not create a User' do
      post '/users', user: user_params
      expect(response.status).to eql 400
    end
  end
end
