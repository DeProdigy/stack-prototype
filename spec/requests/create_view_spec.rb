require 'rails_helper'

RSpec.describe 'View create', type: :request do
  context 'with good params' do
    it 'creates a View' do
      user = User.create(username: 'someone')
      post = Post.create(content: 'www.blah.com', user: user)
      view_params = { user_id: user.id, post_id: post.id }

      post '/views', view: view_params

      expect(response.status).to eql 201
    end
  end

  context 'with bad comment params' do
    it 'does not create a View' do
      view_params = { user_id: '', post_id: ''}

      post '/views', view: view_params

      expect(response.status).to eql 400
    end
  end
end
