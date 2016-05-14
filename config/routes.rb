Rails.application.routes.draw do
  get 'pages/starter'
  get 'pages/blank'

root to: 'pages#starter'
end
