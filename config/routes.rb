Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
    # ... autres contrôleurs ...
  }

  root to: "pages#home"

  get "merlimontdavant", to: "pages#merlimontdavant"
  get "about", to: "pages#about"
  get "dashboard", to: "pages#dashboard"
  get "faunecat", to: "pages#faunecat"
  get "univers", to: "pages#univers"


  devise_scope :user do
    get "/fauneflore", to: "pages#fauneflore"
  end

  resources :activites
  resources :logements
  resources :faunes

end
