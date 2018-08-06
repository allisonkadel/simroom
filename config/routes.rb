Rails.application.routes.draw do
  resources :equipment
  resources :trainings
  resources :users

  root 'static#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
