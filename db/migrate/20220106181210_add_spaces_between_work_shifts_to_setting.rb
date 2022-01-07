# frozen_string_literal: true

# Add spaces between works shifts to setting
class AddSpacesBetweenWorkShiftsToSetting < ActiveRecord::Migration[6.1]
  def change
    add_column :settings, :spaces_between_work_shifts, :integer, null: false, default: 3
  end
end
