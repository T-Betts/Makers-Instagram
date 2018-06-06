# frozen_string_literal: true

require "rails_helper"

RSpec.feature "All Users" do
  scenario "A user can click 'All users and see a list of buttons to every user on the site.'" do
    sign_up
    click_button "Logout"
    sign_up_2
    click_button "All Users"
    expect(page).to have_selector("input[type=submit][value='Tom123']")
    expect(page).to have_selector("input[type=submit][value='John']")
  end
end
