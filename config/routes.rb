# frozen_string_literal: true

Rails.application.routes.draw do
  get 'guides/form', to: 'forms#create_form'
  post 'guides/form', to: 'forms#send_mails'
end
