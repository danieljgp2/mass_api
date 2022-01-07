# frozen_string_literal: true

json.call(user, :email, :name, :color)
json.id user[:token] ? user[:id] : user.id
json.token user[:token] if user[:token]
