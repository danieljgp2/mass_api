# frozen_string_literal: true

# Application controller
class ApplicationController < ActionController::API
  def authenticate_user!
    if request.headers['Authorization'].present?
      payload = JWT.decode(request.headers['Authorization'], Rails.application.credentials[:auth_key], 'HS256')
      @current_user = User.find_by(email: payload.first['data'])

      return if @current_user

      messages = { error: 'user_not_available' }
    else
      messages = { error: 'set_authorization' }
    end

    render_error(messages)
  end

  private

  def render_error(messages)
    @messages = messages
    render status: :conflict, template: 'v1/errors/show'
  end
end
