# frozen_string_literal: true

class AddPasswordToContacts < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :password, :string
  end
end
