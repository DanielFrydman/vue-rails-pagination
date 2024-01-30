# frozen_string_literal: true

module V1
  class UsersController < ApplicationController
    def index
      @pagy, @records = pagy(User.all)
      render json: { pagy: @pagy, records: @records }, status: :ok
    end
  end
end
