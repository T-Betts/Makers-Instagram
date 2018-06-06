# frozen_string_literal: true

require "rails_helper"

RSpec.feature "Pictures" do
  scenario "Can upload pictures." do
    sign_up
    click_button "Profile"
    click_button "Upload Picture"
    page.attach_file("picture_image", Rails.root + "app/assets/images/another_cat.jpeg")
    click_button "Post"
    click_button "Profile"
    expect(page).to have_css("img[src*='another_cat.jpeg']")
  end

  scenario "Can delete pictures." do
    sign_up
    click_button "Profile"
    click_button "Upload Picture"
    page.attach_file("picture_image", Rails.root + "app/assets/images/another_cat.jpeg")
    click_button "Post"
    click_button "Profile"
    click_button "Delete"
    expect(page).not_to have_css("img[src*='another_cat.jpeg']")
  end
end
