# frozen_string_literal: true

class ChangePasswordToContact < ActiveRecord::Migration[7.0]
  def change
    remove_column :contacts, :password_confirm, :string
    add_column :contacts, :password_confirmation, :string
  end
end
