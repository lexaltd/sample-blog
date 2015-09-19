require "spec_helper"

feature "Article Creation" do 
  before(:all) do
    sing_up
  end

  scenario "allows user to visit new article page" do      
    visit new_article_path #На какую страницу перейти
    expect(page).to have_content 'New Articles'
  end
end