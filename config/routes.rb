DigistoreApi::Application.routes.draw do
  defaults format: :json do
    resources :users
    resources :products, :only => [:index, :show, :create]
  end
end
