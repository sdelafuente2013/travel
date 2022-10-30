# frozen_string_literal: true

class FormsController < ApplicationController
  def create_form
    @formulario = Contact.new
  end

  def send_mails
    @formulario = Contact.create!(formulario_params)
    FormsFutureGuideMailer.send_mail_future_guide(@formulario).deliver_now
    FormsFutureGuideMailer.send_mail_santiago(@formulario).deliver_now
    # FormsFutureGuideMailer.send_mail_nuria(@formulario).deliver_now
    # FormsFutureGuideMailer.send_mail_elena(@formulario).deliver_now

    redirect_to page_path('home')
  end

  private
    def formulario_params
      params.require(:contact).permit(:name, :email, :password, :password_confirmation)
    end
end
