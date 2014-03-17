DigistoreApi::Application.routes.draw do

  resources :users

  resources :products, :only => [:index, :show, :create], :defaults => { :format => 'json' }

  match '*all' => 'application#set_access_control_headers', via: :options
end
