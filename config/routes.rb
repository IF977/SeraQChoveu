Rails.application.routes.draw do

  root 'pages#index'
  get  '/cadastro',  to: 'users#new'
  post '/cadastro', to: 'users#create'
  get '/sobre', to: 'pages#about'
  get '/busca', to: 'pages#busca'
  resources :users
  resources :comentarios
end
