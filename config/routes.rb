Rails.application.routes.draw do
  resources :profiles
  resources :posts

  root 'home#index'

end
