Rails.application.routes.draw do
  resources :acompanhas, :segues, :usuarios, :posts, :caracteristicas

  root 'sessions#new'
 
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  get 'cadastro', to: 'segues#new'

  get 'resultado', to: 'posts#busca'
  get 'busca', to: 'posts#index'

  post 'usuarios/:id/follow', to: 'usuarios#follow', as: "follow_usuario"
  post 'usuarios/:id/unfollow', to: 'usuarios#unfollow', as: "unfollow_usuario"
  
  get 'feed', to: 'usuarios#feed'

  resources :posts


end
