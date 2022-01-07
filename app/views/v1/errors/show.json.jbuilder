# frozen_string_literal: true

@messages.each do |key, value|
  json.set! key, value
end
