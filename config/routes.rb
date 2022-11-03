# frozen_string_literal: true

Rails.application.routes.draw do
  get 'form/create', to: 'forms#create_form'
  post 'form/create', to: 'forms#send_mails'

  get 'guides/dashboard', to: 'guides#dashboard_guide'
  get 'owners/dashboard', to: 'owners#dashboard_owner'
  get 'users/dashboard', to: 'users#dashboard_user'

  devise_for :members, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    password: 'secret',
    confirmation: 'verification',
    unlock: 'unblock',
    registration: 'register',
    sign_up: 'signup' }
end
