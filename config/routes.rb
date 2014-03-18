DigistoreApi::Application.routes.draw do
  defaults format: :json do
    resources :users
    resources :products
    resources :orders
    resources :cart, only: [:show, :create]
  end
end
