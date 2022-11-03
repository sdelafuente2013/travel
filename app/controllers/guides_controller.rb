# frozen_string_literal: true

class GuidesController < ApplicationController
  before_action :authenticate_member!

  def dashboard_guide
    authorize(Post)
  end
end
