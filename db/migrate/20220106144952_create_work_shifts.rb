# frozen_string_literal: true

# Create work shifts
class CreateWorkShifts < ActiveRecord::Migration[6.1]
  def change
    create_table :work_shifts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true
      t.datetime :start, null: false
      t.date :week, null: false
      t.datetime :end, null: false

      t.timestamps
    end
  end
end
