# frozen_string_literal: true

# Add start and end to day
class AddStartAndEndToDay < ActiveRecord::Migration[6.1]
  def change
    add_column :days, :start, :integer, null: false, default: 0
    add_column :days, :end, :integer, null: false, default: 23
  end
end
