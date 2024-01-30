# frozen_string_literal: true

module V1
  class UsersController < ApplicationController
    def index
      render json: { result: User.all }, status: :ok
    end
  end
end
