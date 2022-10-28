# frozen_string_literal: true

Rails.application.routes.draw do
  get 'guides/info'
  get 'guides/form'
  get '/', to: 'users#index', as: 'user_root'
  post '/guides/form', to: 'guides#save'
end
