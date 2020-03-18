Rails.application.routes.draw do
  get 'reservations/create'
  devise_for :users
  root to: 'pages#home'

  resources :pets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
