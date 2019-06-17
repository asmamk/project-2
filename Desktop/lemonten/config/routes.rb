Rails.application.routes.draw do
 get 'pages/home'
  # get 'orders/index'
  # get 'orders/show'
  # get 'orders/new'
  # get 'orders/edit'
  root "pages#home"

  resources :orders
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
