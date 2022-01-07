# frozen_string_literal: true

# == Schema Information
#
# Table name: days
#
#  id         :bigint           not null, primary key
#  end        :integer          default(23), not null
#  name       :integer          not null
#  start      :integer          default(0), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  setting_id :bigint           not null
#
# Indexes
#
#  index_days_on_setting_id  (setting_id)
#
# Foreign Keys
#
#  fk_rails_...  (setting_id => settings.id)
#
require 'test_helper'

class DayTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
