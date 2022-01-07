# frozen_string_literal: true

module V1
  # User controller
  class UsersController < ApplicationController
    def create
      user = User.new(user_params)
      return @user = user_data_structure(user) if user.save

      render_error(user.errors.messages)
    end

    def access
      user = User.find_by(email: params[:email])
      return @user = user_data_structure(user) if user&.authenticate(params[:password])

      render_error({ error: 'invalid_user' })
    end

    private

    def user_data_structure(user)
      {
        id: user.id,
        token: JWT.encode({ data: user.email }, Rails.application.credentials[:auth_key], 'HS256'),
        email: user.email,
        color: user.color,
        name: user.name
      }
    end

    def user_params
      params.permit(:email, :name, :password)
    end
  end
end
