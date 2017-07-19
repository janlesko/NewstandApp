Rails.application.routes.draw do
  resources :articles
  resources :users, only: [:new, :create]

  root 'articles#index'

  get    'signup' => 'users#new'
  get    'login'  => 'sessions#new'
  post   'login'  => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
