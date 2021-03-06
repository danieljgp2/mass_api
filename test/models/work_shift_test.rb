# frozen_string_literal: true

# == Schema Information
#
# Table name: work_shifts
#
#  id         :bigint           not null, primary key
#  end        :datetime         not null
#  start      :datetime         not null
#  week       :date             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  service_id :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_work_shifts_on_service_id  (service_id)
#  index_work_shifts_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (service_id => services.id)
#  fk_rails_...  (user_id => users.id)
#
require 'test_helper'

class WorkShiftTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
