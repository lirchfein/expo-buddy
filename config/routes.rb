Rails.application.routes.draw do
  get 'pages/home'
  get 'expos/:id/bookmark', to: 'expos#bookmark', as: 'bookmark'
  get 'expos/exhibitors/favorites', to: 'exhibitors#favorites_tab', as: 'favorites_tab'
  get 'expos/exhibitors/:id', to: 'exhibitors#favorite', as: 'favorite'
  get 'expos/exhibitors/update/:id', to: 'exhibitors#update', as: 'exhibitor_update'
  # get 'expos/exhibitors/:id.pdf', to: 'exhibitors#show', as: 'pdf'
  devise_for :users
  resources :expos, only: %i[index show create] do
    resources :exhibitors, only: %i[index show create]
  end

  root to: 'pages#home'

  post 'pictures/:exhibitor_id/pic_upload', to: 'pictures#create', as: 'exhibitor_pictures'
  post 'notes/:exhibitor_id/note', to: 'notes#create', as: 'exhibitor_notes'
end
