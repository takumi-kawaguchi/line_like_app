Rails.application.routes.draw do
  root :to => 'general#home'
  get 'general/about'

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }
  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy"
  end

  resources :talks do
    resources :messages, only: [:index, :new, :create]
  end
end
