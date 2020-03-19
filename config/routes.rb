Rails.application.routes.draw do
  get 'reservations/create'
  devise_for :users
  root to: 'pages#home'
  get 'pets/my_pets'
  resources :pets do
    resources :reservations, only: [:new, :create]
  end

  resources :reservations, only: :show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
