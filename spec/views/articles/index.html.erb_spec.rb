require 'rails_helper'

RSpec.describe "articles/index", type: :view do
  before(:each) do
    assign(:articles, [
      Article.create!(title: "One"),
      Article.create!(title: "two" )
    ])
  end

  it "renders a list of articles" do
    render
    render :template => "articles/index.html.erb"
  end
end
