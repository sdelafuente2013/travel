# frozen_string_literal: true

Rails.application.routes.draw do
  # devise_for :members

  get 'form/create', to: 'forms#create_form'
  post 'form/create', to: 'forms#send_mails'

  get 'guides/dashboard', to: 'guides#dashboard'
  get 'owners/dashboard', to: 'owners#dashboard'
  get 'users/dashboard', to: 'users#dashboard'

  # devise_for :members, path: '', path_names: {
  #   sign_in: 'login',
  #   sign_out: 'logout',
  #   password: 'secret',
  #   confirmation: 'verification',
  #   unlock: 'unblock',
  #   registration: 'register',
  #   sign_up: 'signup' }
end
