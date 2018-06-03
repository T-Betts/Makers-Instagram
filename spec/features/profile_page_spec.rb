# # frozen_string_literal: true

require "rails_helper"

RSpec.feature "Profile Page" do
  scenario "After logging in, users see their profile page" do
    visit("/")
    sign_up
    expect(page).to have_content("Tom123's Profile Page")
  end
end
