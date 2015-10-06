require 'rails_helper'

RSpec.describe 'Post create', type: :request do
  context 'with good params' do
    let(:user) { User.create(username: 'someone') }
    let(:post_params) { { user_id: user.id, content: 'google.com' } }

    it 'creates a Post' do
      post '/posts', post: post_params
      expect(response.status).to eql 201
    end
  end

  context 'with bad post params' do
    let(:user) { User.create(username: 'someone') }
    let(:post_params) { { user_id: user.id, content: '' } }
    let(:api_response) { JSON.parse(response.body) }
    let(:expected_error) { {"error" => {"content"=>["can't be blank"]}} }

    it 'does not create a Post' do
      post '/posts', post: post_params
      expect(response.status).to eql 401
      expect(api_response).to eql expected_error
    end
  end

  context 'with bad user params' do
    let(:post_params) { { user_id: '', content: 'google.com' } }
    let(:api_response) { JSON.parse(response.body) }
    let(:expected_error) { {'error' => 'User not found'} }

    it 'does not create a Post' do
      post '/posts', post: post_params
      expect(response.status).to eql 404
      expect(api_response).to eql expected_error
    end
  end
end
