Rails.application.routes.draw do
  root 'books#home'
  get 'books/home' => 'books#home'
  get 'books/index' => 'books#index'
  get 'books/home' => 'users#login'
  delete 'books/home' => 'users#logout'
  post 'books/home' => 'users#check'
  resources :books, only: [:index, :create, :show, :update, :destroy]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
