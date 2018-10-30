require "rails_helper"

feature "As a guest user" do
  scenario "I can get examples of using a word" do
    # As a guest user (no sign in required)
    # When I visit "/"
    visit '/'
    word = "mindfulness"
    # And I fill in a text box with "mindfulness"
    fill_in :word, with: word
    # And I click "Submit"
    click_on "Submit"
    # Then I should see a message that says "Examples for using 'mindfulness'"
    expect(page).to have_content("Examples for using '#{word}'")
    # And I should see a list of sentences with examples of how to use the word
    expect(page).to have_css(".example-sentence")
    # And I should see only sentences where the region for usage is "Brittish" or "Canadian"
    expect(page).to have_content("Region: British")
    expect(page).to have_content("Region: Canadian")
    # And I should not see sentences for any other regions (or blank regions)
  end
end
