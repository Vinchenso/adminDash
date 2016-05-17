Rails.application.routes.draw do
  get 'porfolio/new'

  get 'pages/starter'
  get 'pages/blank'

root to: 'pages#homepage'
end
