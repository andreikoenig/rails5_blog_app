require 'rails_helper'

RSpec.feature "Showing Article" do
  before do
    @article = Article.create(title: "Great Article", body: "This is the article.")
  end

  scenario "a user shows an article" do
    visit "/"

    click_link @article.title
    expect(page).to have_content(@article.title)
    expect(page).to have_content(@article.body)
    expect(current_path).to eq(article_path(@article))
  end
end
