# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'forms/create_form'
  # get 'forms/send_mails'

  get '/', to: 'users#index', as: 'user_root'
  get 'guides/info', to: 'forms#info_previous'
  get 'guides/form', to: 'forms#create_form'
  post 'guides/form', to: 'forms#send_mails'
end
