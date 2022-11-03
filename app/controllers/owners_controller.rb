# frozen_string_literal: true

class OwnersController < ApplicationController
  before_action :authenticate_member!

  def dashboard_owner
    authorize(Post)
  end
end
