# frozen_string_literal: true

json.array! @work_shifts, partial: 'v1/partials/work_shift', as: :work_shift
