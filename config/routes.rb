Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
    # ... autres contrôleurs ...
  }

  root to: "pages#home"

  get "galerie", to: "pages#galerie"
  get "merlimontdavant", to: "pages#merlimontdavant"
  get "dashboard", to: "pages#dashboard", constraints: ->(request) { request.env['warden'].authenticate? && request.env['warden'].user.admin? }
  get "faunecat", to: "pages#faunecat"
  get "moncompte", to: "pages#moncompte"
  get "about", to: "pages#about"




  devise_scope :user do
    get "/fauneflore", to: "pages#fauneflore"
  end

  resources :activites
  resources :logements
  resources :biotops, only: [:new, :create, :edit, :update, :destroy]
  resources :type_espece_categories, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :espece_categories
  resources :especes
  resources :galeries, only: [:new, :create, :edit, :update, :destroy]
  resources :oldpics


end
