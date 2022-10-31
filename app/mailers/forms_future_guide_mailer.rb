# frozen_string_literal: true

class FormsFutureGuideMailer < ApplicationMailer
  MESSAGE_GUIDE_INTERESTED = 'Formulario de contacto - guía interesado'
  def send_mail_future_guide(object)
    @name = object.name
    @email = object.email

    mail to: @email, subject: "¡#{@name.split.first.capitalize} Pronto revisaremos tu solicitud!"
  end

  def send_mail_santiago(object)
    @name = object.name
    @email = object.email
    @owner = 'Santiago'

    mail to: 'santiagodelafuente2013@gmail.com',
         subject: MESSAGE_GUIDE_INTERESTED,
         template_path: 'forms_future_guide_mailer',
         template_name: 'send_mail_owner'
  end
  def send_mail_nuria(object)
    @name = object.name
    @email = object.email
    @owner = 'Nuria'

    mail to: 'nuriagutierrezrioperez@gmail.com',
         subject: MESSAGE_GUIDE_INTERESTED,
         template_path: 'forms_future_guide_mailer',
         template_name: 'send_mail_owner'
  end
  def send_mail_elena(object)
    @name = object.name
    @email = object.email
    @owner = 'Elena'

    mail to: 'elenagutierrezrioperez@gmail.com',
         subject: MESSAGE_GUIDE_INTERESTED,
         template_path: 'forms_future_guide_mailer',
         template_name: 'send_mail_owner'
  end
end
