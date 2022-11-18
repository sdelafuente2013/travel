# frozen_string_literal: true

class ModificateStatusToPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :status, :string
    add_column :posts, :status, :integer
  end
end
