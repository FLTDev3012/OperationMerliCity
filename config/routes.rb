Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
    # ... autres contrôleurs ...
  }

  root to: "pages#home"

  get "galerie", to: "pages#galerie"
  get "merlimontdavant", to: "pages#merlimontdavant"
  get "about", to: "pages#about"
  get "dashboard", to: "pages#dashboard", constraints: ->(request) { request.env['warden'].authenticate? && request.env['warden'].user.admin? }
  get "faunecat", to: "pages#faunecat"
  get "univers", to: "pages#univers"
  get "moncompte", to: "pages#moncompte"


  devise_scope :user do
    get "/fauneflore", to: "pages#fauneflore"
  end

  resources :activites
  resources :logements
  resources :faunes
  resources :biotops, only: [:new, :create, :edit, :update, :destroy]
  resources :type_espece_categories, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :espece_categories
  resources :especes


end
