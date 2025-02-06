Rails.application.routes.draw do
  get 'errors/not_found'
  get 'reviews/create'
  devise_for :users
  root to: "pages#home"
  get "about-us", to: "pages#about-us", as: :about_us
  get "up_next", to: "pitches#up_next", as: :up_next
  get "privacy-policy", to: "pages#privacy-policy", as: :privacy_policy
  match "/404", to: "errors#not_found", via: :all


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  resources :pitches do
    member do
      get :generate_ppt
      get 'up_next'
    end
    resources :reviews, only: [:create]
    resources :favourites, only: [:create]
  end

  resources :favourites, only: [:index, :destroy]
  # Defines the root path route ("/")
  # root "posts#index"
end
