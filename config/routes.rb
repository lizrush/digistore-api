DigistoreApi::Application.routes.draw do
  defaults format: :json do
    resources :users
    resources :products
    resources :orders
    resources :items, only: [:show, :create, :index]
  end
end
