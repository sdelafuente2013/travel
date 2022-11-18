# frozen_string_literal: true

class CreateEtapas < ActiveRecord::Migration[7.0]
  def change
    create_table :etapas do |t|
      t.string :title
      t.string :description
      t.string :image
      t.string :full_description
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
