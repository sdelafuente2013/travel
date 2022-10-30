# frozen_string_literal: true

class AddPasswordConfirmToContacts < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :password_confirm, :string
  end
end
