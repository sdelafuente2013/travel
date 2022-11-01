# frozen_string_literal: true

class FormsController < ApplicationController
  def create_form
    @formulario = Contact.new
  end

  def send_mails
    @formulario = Contact.new(formulario_params)

    respond_to do |format|
      if @formulario.save
        format.html { render :create_form, status: :created }
        @enviado = true
      else
        format.html { render :create_form, status: :unprocessable_entity }
      end
    end

    # FormsFutureGuideMailer.send_mail_future_guide(@formulario).deliver_now
    # FormsFutureGuideMailer.send_mail_santiago(@formulario).deliver_now
    # FormsFutureGuideMailer.send_mail_nuria(@formulario).deliver_now
    # FormsFutureGuideMailer.send_mail_elena(@formulario).deliver_now
  end

  private
    def formulario_params
      params.require(:contact).permit(:name, :email, :password, :password_confirmation)
    end
end
