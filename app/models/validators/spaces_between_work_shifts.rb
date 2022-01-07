# frozen_string_literal: true

module Validators
  # Spaces between work shifts validator
  class SpacesBetweenWorkShifts < ActiveModel::Validator
    def validate(record)
      spaces_between_work_shifts = record.service.setting.spaces_between_work_shifts
      work_shifts = WorkShift.where(
        'work_shifts.user_id = ? AND work_shifts.service_id = ? AND work_shifts.start >= ? AND work_shifts.end <= ?',
        record.user_id,
        record.service_id,
        (record.start - spaces_between_work_shifts.hours),
        (record.end + spaces_between_work_shifts.hours)
      ).count
      record.errors.add :date, 'can not be assigned' unless work_shifts.zero?
    end
  end
end
