Rails.application.routes.draw do
  resources :tatuagems
  resources :usuarios
  resources :caracteristicas
  resources :estudios
  resources :tatuadors

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'usuarios#index'
end
