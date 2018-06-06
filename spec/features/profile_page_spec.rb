# # frozen_string_literal: true

require "rails_helper"

RSpec.feature "Profile Page" do
  scenario "After logging in, users can click a button and see their profile page" do
    sign_up
    click_button "Profile"
    expect(page).to have_content("Tom123's Profile Page")
  end
end
