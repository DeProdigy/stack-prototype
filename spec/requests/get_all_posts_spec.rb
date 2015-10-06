require 'rails_helper'

RSpec.describe 'Get all Posts', type: :request do
  context 'when Posts exist' do
    before do
      user = User.create(username: 'someone')
      post1 = Post.create(content: 'google.com', user: user)
      post2 = Post.create(content: 'yahoo.com', user: user)
    end

    it 'responds with all the Posts' do
      get '/posts'
      posts = JSON.parse(response.body).first['posts']

      expect(posts.length).to eql 2
      expect(response.status).to eql 200
    end
  end

  context 'when Posts do not exist' do
    it 'responds with an empty array' do
      get '/posts'

      expect(JSON.parse(response.body)).to eql []
      expect(response.status).to eql 200
    end
  end
end
