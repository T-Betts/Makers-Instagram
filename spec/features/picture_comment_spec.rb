# frozen_string_literal: true

require "rails_helper"

RSpec.feature "Picture Comments" do
  scenario "Can comment on a picture." do
    sign_up
    click_button "Profile"
    click_button "Upload Picture"
    page.attach_file("picture_image", Rails.root + "app/assets/images/another_cat.jpeg")
    click_button "Post"
    click_button "Comment"
    fill_in "comment[body]", with: "Nice Picture!"
    click_button "Comment"
    expect(page).to have_content("Nice Picture!")
  end
end
