# frozen_string_literal: true

require "rails_helper"

RSpec.feature "Authentication" do
  scenario "shows register and login buttons when not signed in" do
    visit("/")
    expect(page).to have_selector("input[type=submit][value='Register']")
    expect(page).to have_selector("input[type=submit][value='Login']")
  end

  scenario "users can register" do
    sign_up
    expect(page).to have_content("Logged in as: Tom123")
  end

  scenario "users can log out" do
    sign_up
    click_button "Logout"
    expect(page).to have_selector("input[type=submit][value='Login']")
  end

  scenario "users can log in" do
    sign_up
    click_button "Logout"
    click_button "Login"
    fill_in "Email", with: "hello@live.com"
    fill_in "Password", with: "password123"
    click_button "Log in"
    expect(page).to have_selector("input[type=submit][value='Logout']")
  end

  scenario "users can change thier passwords" do
    sign_up
    click_button "Edit"
    fill_in "Password", with: "newpassword"
    fill_in "Password confirmation", with: "newpassword"
    fill_in "Current password", with: "password123"
    click_button "Update"
    click_button "Logout"
    click_button "Login"
    fill_in "Email", with: "hello@live.com"
    fill_in "Password", with: "newpassword"
    click_button "Log in"
    expect(page).to have_selector("input[type=submit][value='Logout']")
  end

  scenario "users can cancel their account" do
    sign_up
    click_button "Edit"
    click_button "Cancel my account"
    click_button "Login"
    fill_in "Email", with: "hello@live.com"
    fill_in "Password", with: "password123"
    click_button "Log in"
    expect(page).to have_selector("input[type=submit][value='Log in']")
  end
end
