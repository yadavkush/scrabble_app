Rails.application.routes.draw do
  root 'leader_boards#index'
  resources :teams
  resources :matches
  resources :members
end
