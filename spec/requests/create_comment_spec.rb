require 'rails_helper'

RSpec.describe 'Comment create', type: :request do
  context 'with good params' do
    it 'creates a Comment' do
      user = User.create(username: 'someone')
      post = Post.create(content: 'www.blah.com', user: user)
      comment_params = { user_id: user.id, post_id: post.id, body: 'I like long walks' }

      post '/comments', comment: comment_params

      expect(response.status).to eql 201
    end
  end

  context 'with bad comment params' do
    it 'does not create a Comment' do
      comment_params = { user_id: '', post_id: '', body: 'I like dogs' }

      post '/comments', comment: comment_params

      expect(response.status).to eql 400
    end
  end
end
