# frozen_string_literal: true

# == Schema Information
#
# Table name: settings
#
#  id                         :bigint           not null, primary key
#  spaces_between_work_shifts :integer          default(3), not null
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#  service_id                 :bigint           not null
#
# Indexes
#
#  index_settings_on_service_id  (service_id)
#
# Foreign Keys
#
#  fk_rails_...  (service_id => services.id)
#
require 'test_helper'

class SettingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
