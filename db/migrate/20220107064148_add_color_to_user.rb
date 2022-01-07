# frozen_string_literal: true

# Add color to user
class AddColorToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :color, :string, null: false
  end
end
