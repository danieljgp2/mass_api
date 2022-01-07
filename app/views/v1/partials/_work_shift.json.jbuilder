# frozen_string_literal: true

json.call(work_shift, :start, :week, :end, :id)
json.user do
  json.name work_shift.user.name
  json.id work_shift.user.id
  json.color work_shift.user.color
end
