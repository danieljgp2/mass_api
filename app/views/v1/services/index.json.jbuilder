# frozen_string_literal: true

json.array! @services, partial: 'v1/partials/service', as: :service
