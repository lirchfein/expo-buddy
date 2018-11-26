Rails.application.routes.draw do
  devise_for :users
  resources :expos, only: %i[index show create] do
    resources :exhibitors, only: %i[show create]
  end

  root to: 'pages#index'
end
