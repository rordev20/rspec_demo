require 'rails_helper'

RSpec.describe Article, type: :model do
	context "with 2 or more articles" do
    it "orders them in reverse chronologically" do
      article1 = Article.create! ({title: 'first article'})
      article2 = Article.create! ({title: 'second article'})
      expect(Article.all).to eq([article1, article2])
    end
  end

end
