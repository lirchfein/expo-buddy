Rails.application.routes.draw do
  get 'pages/home'
  get 'expos/:id/bookmark', to: 'expos#bookmark', as: 'bookmark'
  get 'expos/exhibitors/:id', to: 'exhibitors#favorite', as: 'favorite'
  devise_for :users
  resources :expos, only: %i[index show create] do
    resources :exhibitors, only: %i[index show create]
  end

  root to: 'pages#home'

  # to be eliminated after integration in exhibitor show view:
  get 'pictures/:exhibitor_id/test_pic_upload', to: 'pictures#test_pic_upload', as: 'exhibitor_pictures'
  post 'pictures/:exhibitor_id/test_pic_upload', to: 'pictures#create'
end
