# frozen_string_literal: true

Rails.application.routes.draw do
  get 'form/create', to: 'forms#create_form'
  post 'form/create', to: 'forms#send_mails'

  get 'users/dashboard', to: 'users#dashboard_user'

  get 'owners/dashboard', to: 'owners#dashboard_owner'
  get 'owners/dashboard/new', to: 'owners#new_user'
  post 'owners/dashboard/new', to: 'owners#create_user', as: 'create_user_owner'

  get 'guides/dashboard', to: 'guides#dashboard_guide'
  get 'guides/dashboard/new', to: 'guides#new_tour_guide', as: 'create_tour'
  post 'guides/dashboard/new', to: 'guides#create_tour_guide', as: 'create_tour_post'

  devise_for :members, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    password: 'secret',
    confirmation: 'verification',
    unlock: 'unblock',
    registration: 'register',
    sign_up: 'signup' }
end
