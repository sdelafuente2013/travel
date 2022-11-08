# frozen_string_literal: true

require 'securerandom'
class OwnersController < ApplicationController
  before_action :authenticate_member!
  def dashboard_owner
    @user = {
      names: ['María Carmen', 'Antonio', 'José Manuel', 'Hugo', 'Mateo', 'Lucía', 'Sofía', 'Martina', 'Valeria', 'Alejandro', 'Pablo', 'Alvaro', 'Daniela'],
      rol: ['Guía', 'Viajero'],
      status: ['Activo', 'Desactivado'],
      email: ['example@example.com'],
      travel_ofert: [3, 4, 5, 6, 7, 8, 9, 10],
      travel_contrac: [1, 2, 3, 4, 5]
    }
    authorize(Post)
  end
  def new_user
    @member = Member.new

    authorize(Post)
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
      params.require(:member).permit(:email)
    end
end
