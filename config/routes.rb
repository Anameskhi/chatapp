Rails.application.routes.draw do
  resources :rooms do
    resources :messages
  end
  root 'pages#home'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  get '/users/show/:id', to: "users#show", as: :user
  

  devise_scope :user do
    get 'users', to: 'devise/registrations#new'
  end

 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
