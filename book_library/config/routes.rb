Rails.application.routes.draw do
  resources :books
  # resources :users, only: %i(index new create)
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
