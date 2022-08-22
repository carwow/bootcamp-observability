# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Homes', type: :request do
  describe 'GET /index' do
    it 'return 200' do
      get root_path
      expect(response).to have_http_status :ok
    end

    it 'should include Hello from Carwow in the body' do
      get root_path
      expect(response.body).to include('Hello from Carwow')
    end
  end
end
