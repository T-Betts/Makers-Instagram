# frozen_string_literal: true

require "rails_helper"

RSpec.feature "Edit Comments" do
  before(:each) do
    sign_up
    post_picture
    add_comment
    click_button "Edit Comment"
    fill_in "comment[body]", with: "I changed my mind"
    click_button "Confirm"
  end

  scenario "Shows new version of comment" do
    expect(page).to have_content("I changed my mind")
  end

  scenario "Does not show old version of comment" do
    expect(page).not_to have_content("Nice Picture!")
  end
end
