# frozen_string_literal: true

require 'securerandom'
class OwnersController < ApplicationController
  before_action :authenticate_member!
  def dashboard_owner
    authorize(Post)

    @members = Member.where(role: 'guia') + Member.where(role: 'viajero')
  end
  def new_user
    authorize(Post)

    @member = Member.new
  end
  def create_user
    authorize(Post)

    @member = Member.new(user_params)
    @member.password = SecureRandom.hex(8)
    @member.role = 'guia'

    respond_to do |format|
      if @member.save
        format.html { redirect_to owners_dashboard_path, notice: "#{@member.email} ha sido añadido como guía" }
        FormsFutureGuideMailer.send_mail_invitation_guide(@member).deliver_now
      else
        format.html { render :new_user, status: :unprocessable_entity }
      end
    end
  end

  private
    def user_params
      params.require(:member).permit(:email, :name)
    end
end
