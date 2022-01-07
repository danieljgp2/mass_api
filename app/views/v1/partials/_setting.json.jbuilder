# frozen_string_literal: true

json.call(setting, :spaces_between_work_shifts, :id)
json.days do
  json.array! setting.days, partial: 'v1/partials/day', as: :day
end
