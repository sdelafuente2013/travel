# frozen_string_literal: true

class GuidesController < ApplicationController
  before_action :authenticate_member!

  def dashboard_guide
    authorize(Post)
  end

  def new_tour_guide
    authorize(Post)

    @tour = Post.new
  end

  def create_tour_guide
    authorize(Post)

    @tour = Post.new(tour_params)
    @tour.member_id = current_member.id

    if @tour.save
      redirect_to guides_dashboard_path
    else
      render :new_tour_guide, status: :unprocessable_entity
    end
  end

  private
    def tour_params
      params.require(:post).permit(:title, :country, :city, :type_activity, :price)
    end
end
