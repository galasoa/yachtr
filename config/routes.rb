Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'pages/profile', to: "pages#profile"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :yachts do
    resources :bookings, only: [ :new, :create, :edit, :update ]
  end

  resources :bookings, only: [ :destroy ]

end
