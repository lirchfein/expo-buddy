Rails.application.routes.draw do
  get 'pages/home'
  devise_for :users
  resources :expos, only: %i[index show create] do
    resources :exhibitors, only: %i[index show create]
  end

  root to: 'pages#home'
end
