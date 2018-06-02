def sign_up
  visit("/")
  click_button "Register"
  fill_in "Username", with: "Tom123"
  fill_in "Email", with: "hello@live.com"
  fill_in "Password", with: "password123"
  fill_in "Password confirmation", with: "password123"
  click_button "Sign up"
end
