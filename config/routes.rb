Rails.application.routes.draw do
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show'
  post 'books' => 'books#create'
  root 'pages#home'
  get 'contact' => 'pages#contact'
  patch 'books/:id' => 'books#update'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
