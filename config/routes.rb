Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'pets/my_pets'
  post 'reservations/:id/accept', to: "reservations#accept", as: :accept_reservation
  post 'reservations/:id/decline', to: "reservations#decline", as: :decline_reservation
  get 'reservations/my_offers', to: "reservations#my_offers", as: :offers_reservations
  resources :pets do
    resources :reservations, only: [:new, :create]
  end

  resources :reservations, only: [:new, :index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
