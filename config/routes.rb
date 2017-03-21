Rails.application.routes.draw do
  resources :profiles
  root 'home#index'

end
