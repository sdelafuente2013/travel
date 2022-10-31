# frozen_string_literal: true

class GuidesController < ApplicationController
  def info
    # Implement
  end

  def form
    @formulario = Contact.new
    #
  end

  def save
    @formulario = Contact.create!(formulario_params)
    GuideMailer.send_mail_future_guide(@formulario).deliver_now
    GuideMailer.send_mail_santiago(@formulario).deliver_now
    # GuideMailer.send_mail_nuria(@formulario).deliver_now
    # GuideMailer.send_mail_elena(@formulario).deliver_now

    redirect_to user_root_path
  end

  private
    def formulario_params
      params.require(:contact).permit(:name, :phone, :email, :about)
    end
end
