Rails.application.routes.draw do
  resources :products
  # resources :articals, only: [:show, :index, :create, :new, :edit, :update, :destroy]   
  resources :articals
  root 'pages#home'
end
