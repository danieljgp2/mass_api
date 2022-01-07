# frozen_string_literal: true

json.array!(@work_shifts) do |week, count|
  json.date week
  json.count count
end
