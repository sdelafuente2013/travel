# frozen_string_literal: true

class GuideMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml   or config/locales/zh_CN.yml
  # with the following lookup:
  #
  #   en.guide_mailer.formulario.subject
  #
  def send_mail_future_guide(object)
    @name = object.name
    @email = object.email

    mail to: @email, subject: '¡Pronto revisaremos tu solicitud!'
  end

  def send_mail_santiago(object)
    @name = object.name
    @phone = object.phone
    @email = object.email
    @about = object.about
    @owner = 'Santiago'

    mail to: 'santiagodelafuente2013@gmail.com',
         subject: 'Formulario de contacto - guía interesado',
         template_path: 'guide_mailer',
         template_name: 'send_mail_digital_tour'
  end
  def send_mail_nuria(object)
    @name = object.name
    @phone = object.phone
    @email = object.email
    @about = object.about
    @owner = 'Nuria'

    mail to: 'santiago.delafuente@bue.edu.ar',
         subject: 'Formulario de contacto - guía interesado',
         template_path: 'guide_mailer',
         template_name: 'send_mail_digital_tour'
  end
  def send_mail_elena(object)
    @name = object.name
    @phone = object.phone
    @email = object.email
    @about = object.about
    @owner = 'Elena'

    mail to: '',
         subject: 'Formulario de contacto - guía interesado',
         template_path: 'guide_mailer',
         template_name: 'send_mail_digital_tour'
  end
end
