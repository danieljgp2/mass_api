# frozen_string_literal: true

module V1
  # Services controller
  class ServicesController < ApplicationController
    before_action :authenticate_user!

    def index
      @services = Service.includes(setting: :days).all
    end

    def show
      @service = Service.find_by(id: params[:id])
      return if @service

      render_error({ error: 'service_not_found' })
    end
  end
end
