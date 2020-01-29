require "rails_helper"

RSpec.feature "Creating Articles", :type => :feature do

	scenario "A user creates a new article" do
    visit '/'
    click_link 'New Article'
    fill_in "article_title", :with => "My Article"
    fill_in "article_body", :with => "This is my first Article"
    click_button "Create Article"
    expect(page).to have_text("Article was successfully created.")
    expect(page.current_path).to eq(articles_path)
  end
end