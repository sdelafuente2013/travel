# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_member!
  def dashboard
    # Implement
  end
end
