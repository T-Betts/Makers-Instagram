# frozen_string_literal: true

require "rails_helper"

RSpec.feature "Pictures" do
  scenario "Can upload pictures." do
    sign_up
    post_picture
    expect(page).to have_css("img[src*='another_cat.jpeg']")
  end

  scenario "Can delete pictures." do
    sign_up
    post_picture
    click_button "Delete"
    expect(page).not_to have_css("img[src*='another_cat.jpeg']")
  end
end
