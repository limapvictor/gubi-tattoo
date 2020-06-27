Rails.application.routes.draw do
  resources :acompanhas
  resources :segues
  resources :tatuagems
  resources :usuarios
  resources :caracteristicas
  resources :estudios
  resources :tatuadors

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'cadastro', to: 'segues#new'

  get 'busca', to: 'posts#busca'

  post 'usuarios/:id/follow', to: 'usuarios#follow', as: "follow_usuario"
  post 'usuarios/:id/unfollow', to: 'usuarios#unfollow', as: "unfollow_usuario"
  root 'sessions#new'

  resources :posts


end
