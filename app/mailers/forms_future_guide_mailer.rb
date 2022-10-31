# frozen_string_literal: true

class FormsFutureGuideMailer < ApplicationMailer
  MESSAGE_GUIDE_INTERESTED = 'Formulario de contacto - Nuevo guía interesado'
  def send_mail_future_guide(object)
    @first_name = object.name.split.first.capitalize
    @email = object.email

    mail to: @email, subject: "¡#{@first_name} Pronto revisaremos tu solicitud!"
  end

  def send_mail_santiago(object)
    @full_name = object.name
    @first_name = object.name.split.first.capitalize
    @email = object.email
    @owner = 'Santiago'

    mail to: 'santiagodelafuente2013@gmail.com',
         subject: MESSAGE_GUIDE_INTERESTED,
         template_path: 'forms_future_guide_mailer',
         template_name: 'send_mail_owner'
  end
  def send_mail_nuria(object)
    @full_name = object.name
    @first_name = object.name.split.first.capitalize
    @email = object.email
    @owner = 'Nuria'

    mail to: 'nuriagutierrezrioperez@gmail.com',
         subject: MESSAGE_GUIDE_INTERESTED,
         template_path: 'forms_future_guide_mailer',
         template_name: 'send_mail_owner'
  end
  def send_mail_elena(object)
    @full_name = object.name
    @first_name = object.name.split.first.capitalize
    @email = object.email
    @owner = 'Elena'

    mail to: 'elenagutierrezrioperez@gmail.com',
         subject: MESSAGE_GUIDE_INTERESTED,
         template_path: 'forms_future_guide_mailer',
         template_name: 'send_mail_owner'
  end
end
