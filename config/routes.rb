Rails.application.routes.draw do
  get '/users' => 'users#show'
  devise_for :users

  root 'events#index'
  resources :events

  post '/events/:id/attend', to: 'events#attend_event', as: 'attend_event'
  delete '/events/:id/unattend', to: 'events#unattend_event', as: 'unattend_event'
end
