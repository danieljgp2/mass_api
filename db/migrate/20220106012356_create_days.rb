# frozen_string_literal: true

# Create days
class CreateDays < ActiveRecord::Migration[6.1]
  def change
    create_table :days do |t|
      t.references :setting, null: false, foreign_key: true
      t.integer :name, null: false

      t.timestamps
    end
  end
end
