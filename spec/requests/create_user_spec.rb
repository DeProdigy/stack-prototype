require 'rails_helper'

RSpec.describe 'User create', type: :request do
  context 'with good params' do
    let(:user) { { username: 'hintology' } }
    it 'creates a User' do
      post '/users', user: user
      expect(response.status).to eql 201
    end
  end

  context 'bad params' do
    let(:user) { { some: 'huynya' } }
    it 'does not create a User' do
      post '/users', user: user
      binding.pry
      expect(response.status).to eql 400
    end
  end
end
