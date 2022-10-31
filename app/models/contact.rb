# frozen_string_literal: true

class Contact < ApplicationRecord
  validates :password, confirmation: true
  validates_presence_of :name, :password, :password_confirmation, :email
  validates_length_of :password, minimum: 6, on: :create
  validates_length_of :password_confirmation, minimum: 6, on: :create
  validates_uniqueness_of :email
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
