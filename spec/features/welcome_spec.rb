# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Homepage' do
  scenario 'Can visit homepage and see welcome message' do
    visit('/')
    expect(page).to have_content('Welcome to Makers Instagram')
  end
end
