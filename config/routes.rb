Rails.application.routes.draw do
  resources :comentarios
  root 'pages#index'

  resources :users
  get  '/cadastro',  to: 'users#new'
end
