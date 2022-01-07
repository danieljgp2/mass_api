# frozen_string_literal: true

# Create settings
class CreateSettings < ActiveRecord::Migration[6.1]
  def change
    create_table :settings do |t|
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
