require 'rails_helper'

describe('User can visit the welcome page') do
  it('and see a book search form') do
    visit root_path

    expect(page).to have_content("Welcome to Book Review")
    expect(page).to have_content("Search for a Book")
    expect(page).to have_button("Find Book")

    fill_in "Title", with: "the man who saw everything"
    click_on "Find Book"
    expect(current_path).to eq(search_path)
    expect(page).to have_css(".title")
    expect(page).to have_css(".author")
    expect(page).to have_css(".genres")
  end
end
