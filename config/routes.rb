Rails.application.routes.draw do
  root 'mailers#index'
  resources :tasks
  resources :mailers
end
