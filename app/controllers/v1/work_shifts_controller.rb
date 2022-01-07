# frozen_string_literal: true

module V1
  # Work Shift controller
  class WorkShiftsController < ApplicationController
    before_action :filter_service, except: :destroy
    before_action :authenticate_user!

    def index
      @work_shifts = @service
                     .work_shifts
                     .where(week: params[:date])
                     .includes(:user)
    end

    def work_shifts_count
      @work_shifts = @service
                     .work_shifts
                     .where('week <= ?', (DateTime.now + 5.weeks))
                     .group("TO_CHAR(week, 'YYYY-MM-DD')")
                     .count
    end

    def create
      @work_shift = WorkShift.new(
        user: @current_user,
        service: @service,
        start: params[:start],
        end: params[:end]
      )
      return if @work_shift.save

      render_error(@work_shift.errors.messages)
    end

    def destroy
      @work_shift = @current_user
                    .work_shifts
                    .find_by(id: params[:id])
      return if @work_shift.destroy

      render_error(@work_shift.errors.messages)
    end

    private

    def filter_service
      @service = Service.find_by(id: params[:service_id])
      return if @service

      render_error({ error: 'service_not_found' })
    end

    def work_shift_params
      params.permit(:start, :end)
    end
  end
end
