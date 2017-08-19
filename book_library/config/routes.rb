Rails.application.routes.draw do
  resources :books
  # resources :users, only: %i(index new create)
  resources :users
  get 'admin' => 'admin/books#index'
  get 'admin/:id' => 'admin/books#show'
  post 'admin' => 'admin/books#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
