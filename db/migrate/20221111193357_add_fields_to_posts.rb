# frozen_string_literal: true

class AddFieldsToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :country, :string
    add_column :posts, :city, :string
    add_column :posts, :type_activity, :string
    add_column :posts, :price, :integer
  end
end
