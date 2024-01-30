# frozen_string_literal: true

require 'rails_helper'

RSpec.describe V1::UsersController, type: :controller do
  describe '#GET index' do
    subject { get(:index, params: {}) }

    before do
      10.times do
        create(:user)
      end
    end

    it 'returns a hash with pagy info and records' do
      subject
      response_body = JSON.parse(response.body)
      expect(response_body).to(have_key('pagy'))
      expect(response_body).to(have_key('records'))
    end

    it 'returns 200' do
      subject
      expect(response).to(have_http_status(:ok))
    end
  end
end
