Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "todos#index"
  resources :todos, only: [:index, :new, :create]
  resource :session, only: [:new, :create]

end
