# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Home page', type: :feature do
  scenario 'User clicks the redirect button to carwow' do
    countries_url_mapping = {
      uk: 'https://carwow.co.uk',
      de: 'https://carwow.de',
      es: 'https://carwow.es'
    }

    countries_url_mapping.each do |country, url|
      visit '/'
      find("a[id='go_to_carwow_#{country}']").click
      expect(page).to have_current_path(url)
    end
  end
end
