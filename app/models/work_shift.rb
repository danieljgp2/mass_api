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
class WorkShift < ApplicationRecord
  include ActiveModel::Validations

  belongs_to :user
  belongs_to :service

  before_save :date_to_end_of_week

  validates :start, :end, presence: true
  validates :start, :end, uniqueness: { scope: :service_id }
  validates_with Validators::SpacesBetweenWorkShifts

  private

  def date_to_end_of_week
    self.week = start.end_of_week
  end
end
