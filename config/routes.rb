Rails.application.routes.draw do
  resources :posts

  get 'ping' => 'ping#ping'
  get 'secured/ping' => 'secured_ping#ping'


end
