Rails.application.routes.draw do

  mount API => "/api", :at => '/'

  root 'profile#index'
  resources :profile

end
