# frozen_string_literal: true

class RemoveAboutToContacts < ActiveRecord::Migration[7.0]
  def change
    remove_column :contacts, :about, :string
    remove_column :contacts, :phone, :string
  end
end
