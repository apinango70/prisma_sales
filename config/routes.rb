Rails.application.routes.draw do
  get 'pages/index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root "pages#index"

end