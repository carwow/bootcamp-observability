# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Home page', type: :feature do
  scenario 'User clicks the redirect button to carwow', focus: true do
    visit '/'
    find("a[id='go_to_carwow']").click
    expect(page).to have_current_path('https://carwow.co.uk')
  end
end
