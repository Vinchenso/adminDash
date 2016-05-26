Rails.application.routes.draw do
  namespace :admin do
    resources :lineitems
    resources :statements

    root to: "statements#index"
  end

  get 'pages/starter'
  get 'pages/blank'

  resources :statements
  resources :lineitems

  constraints Clearance::Constraints::SignedIn.new do
    root to: 'statements#index', as: :signed_in_root
  end

  constraints Clearance::Constraints::SignedOut.new do
    root to: 'pages#blank'
  end
end
