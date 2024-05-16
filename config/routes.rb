Rails.application.routes.draw do
  get 'users/show'
  devise_for :users

  root 'events#index'
  resources :events
  post '/events/:id/attend', to: 'events#attend_event', as: 'attend_event'
end
