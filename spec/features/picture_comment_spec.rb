# frozen_string_literal: true

require "rails_helper"

RSpec.feature "Picture Comments" do
  scenario "Can comment on a picture." do
    sign_up
    post_picture
    add_comment
    expect(page).to have_content("Nice Picture!")
  end

  scenario "Can delete a comment" do
    sign_up
    post_picture
    add_comment
    find(:css, 'img[src*="another_cat.jpeg"]').click
    click_button "Delete"
    expect(page).not_to have_content("Nice Picture!")
  end
end
