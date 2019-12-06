Rails.application.routes.draw do
  root 'books#index'
  get 'books/:id' => 'books#show'
  get 'books/:id/delete' => 'books#delete'
  patch 'books/:id' => 'books#update'
  post 'books' => 'books#create'

  get 'LearningRuby' => 'pages#home'
  get 'PageTest' => 'pages#test'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
