Rails.application.routes.draw do
  get 'account_activations/edit'
# Static_pages Controller
 	root             'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'signup'  => 'users#new'
# Session Controller
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
# User Controller
  resources :users
#  Account activations resource
 resources :account_activations, only: [:edit]
end