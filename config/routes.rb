Rails.application.routes.draw do
  resources :comentarios
  root 'pages#index'

  resources :users
end
