# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_member!

  def dashboard_user
    authorize(Post)
  end
end
