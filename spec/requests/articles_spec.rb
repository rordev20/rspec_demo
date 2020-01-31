require 'rails_helper'

RSpec.describe "Articles", type: :request do
  describe "GET /articles" do
    it "works! (now write some real specs)" do
      get articles_path
      expect(response).to have_http_status(200)
    end
  end

  it "Create a article and redirect to index page" do
    get "/articles/new"
    expect(response).to render_template('new')
    post '/articles', params: { article: { title: 'My new article' }}


    #expect(response).to redirect_to(articles_path)
    follow_redirect!
    expect(response).to render_template('show')
    expect(response.body).to include('Article was successfully created.')
  end
end
