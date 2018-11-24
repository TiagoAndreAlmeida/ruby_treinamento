Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#main'

  get 'orders', to: 'order#index', as: 'orders'
  get 'order/:id', to: 'order#show', as: 'order'
  get 'orders/new', to: 'order#new', as: 'new_order'

  post 'orders', to: 'orders#create'
end
