# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HomeHelper, type: :helper do
  describe '#home_page_title' do
    it 'returns home page title' do
      expect(home_page_title).to eq 'Home | Carwow Bootcamp'
    end
  end
end
