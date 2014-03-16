DigistoreApi::Application.routes.draw do

  resources :products, :only => [:index, :show, :create], :defaults => { :format => 'json' }

end
