Rails.application.routes.draw do
  devise_for :users
  root :to => 'general#home'
  resources :talks
  get 'general/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
