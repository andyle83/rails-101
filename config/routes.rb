# frozen_string_literal: true

Rails.application.routes.draw do
  # Adding root
  root 'articles#index'

  get '/articles', to: 'articles#index'
  get '/articles/:id', to: 'articles#show'
end
