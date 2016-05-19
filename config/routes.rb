Rails.application.routes.draw do
  namespace :admin do
    resources :lineitems
    resources :statements

    root to: "lineitems#index"
  end

  get 'pages/starter'
  get 'pages/blank'

  root to: 'pages#homepage'
  resources :statements
  resources :lineitems
end
