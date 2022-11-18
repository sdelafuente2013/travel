# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :member
  has_many :etapas

  enum status: ['draft', 'validating', 'check'], _default: 'draft'
end
