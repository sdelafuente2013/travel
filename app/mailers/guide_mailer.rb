class GuideMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.guide_mailer.formulario.subject
  #
  def formulario
    # @greeting = "Hi"

    mail to: "santiagodelafuente2013@gmail.com", subject: "Formulario de contacto - interesado"
  end
end
