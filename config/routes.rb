Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "merlimontdavant", to: "pages#merlimontdavant"
  get "about", to: "pages#about"
  get "dashboard", to: "pages#dashboard"

  resources :activites
  resources :logements

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
