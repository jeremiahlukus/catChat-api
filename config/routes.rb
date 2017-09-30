Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  resources :snaps
  resources :users, only: [:index, :show]


end
