require 'rails_helper'
#
# I should also see:
# - This book has 2 reviews from the New York Times
#   (Note: reviews are the "summary" in the book review response)
# - Review 1: ""The Man Who Saw Everything,"" which was longlisted for the Booker Prize, looks at masculinity through the perspective of a young historian who sneers at "authoritarian old men.""
# Review Publication Date: 2019-10-09
# - Review 2: "Deborah Levy's latest novel, "The Man Who Saw Everything," experiments with time travel, history and the endless complications of love."
# Review Publication Date: 2019-10-15
describe('User can visit the welcome page') do
  it('and see a book search form') do
    visit root_path

    expect(page).to have_content("Welcome to Book Review")
    expect(page).to have_content("Search for a Book")
    expect(page).to have_button("Find Book")

    fill_in :title, with: "Normal People"
    click_on "Find Book"

    expect(current_path).to eq(search_path)
    expect(page).to have_css(".title")
    expect(page).to have_css(".author")
    expect(page).to have_css(".genres")

    expect(page).to have_css(".reviews", count: 2)

      within(first(".reviews")) do
        expect(page).to have_content("Review")
        expect(page).to have_content("Review Publication Date: 2019-04-08")
      end
  end
end
