# frozen_string_literal: true

# Create services
class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
