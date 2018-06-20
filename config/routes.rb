Rails.application.routes.draw do
  namespace :admin do
    get 'images/get_image'
    resources :products
    resources :images
    root to: "products#index"
  end
  root 'products#index'
  get 'products/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
