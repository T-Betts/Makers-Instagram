def sign_up
  visit("/")
  click_button "Register"
  fill_in "Username", with: "Tom123"
  fill_in "Email", with: "hello@live.com"
  fill_in "Password", with: "password123"
  fill_in "Password confirmation", with: "password123"
  click_button "Sign up"
end

def sign_up_2
  visit("/")
  click_button "Register"
  fill_in "Username", with: "John"
  fill_in "Email", with: "john@live.com"
  fill_in "Password", with: "password123"
  fill_in "Password confirmation", with: "password123"
  click_button "Sign up"
end

def post_picture
  click_button "Upload Picture"
  page.attach_file("picture_image", Rails.root + "app/assets/images/another_cat.jpeg")
  click_button "Post"
end

def add_comment
  click_button "Comment"
  fill_in "comment[body]", with: "Nice Picture!"
  click_button "Comment"
end
