# frozen_string_literal: true

class Contact < ApplicationRecord
  validates :password, confirmation: true
  validates_presence_of :name, :email
  validates_length_of :password, minimum: 5
  validates_length_of :password_confirmation, minimum: 5
  validates_uniqueness_of :email
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
