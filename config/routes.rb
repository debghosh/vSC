Rails.application.routes.draw do

  root 'profile#index'
  resources :profile

end
