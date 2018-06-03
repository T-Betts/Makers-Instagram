# # frozen_string_literal: true

require "rails_helper"

RSpec.feature "Profile Page" do
  scenario "Users can post a picture and see it on their page." do
    visit("/")
    sign_up
    click_button "Upload Picture"
    fill_in "image", with: "http://tiernamen.org/wp-content/uploads/2017/01/ger.jpg"
    click_button "Post"
    expect(page).to have_css("img[src*='http://tiernamen.org/wp-content/uploads/2017/01/ger.jpg']")
  end
end
