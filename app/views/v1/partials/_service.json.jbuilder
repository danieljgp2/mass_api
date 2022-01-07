# frozen_string_literal: true

json.call(service, :name, :id)
json.setting do
  json.partial! 'v1/partials/setting', setting: service.setting
end
