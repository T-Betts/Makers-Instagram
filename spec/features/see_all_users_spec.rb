# frozen_string_literal: true

require "rails_helper"

RSpec.feature "Profile Page" do
  scenario "After logging in, users see their profile page" do
    visit("/")
    sign_up
    click_button "All Users"
    expect(page).to have_link "Tom123"
  end
end
