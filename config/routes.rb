DigistoreApi::Application.routes.draw do
  defaults format: :json do
    resources :users
    resources :products, :only => [:index, :show, :create], :defaults => { :format => 'json' }
  end
  match '*all' => 'application#set_access_control_headers', via: :options
end
