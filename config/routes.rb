Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get '/' => 'books#top'
  #get '/books' => 'books#index'
  #post 'books' => 'books#create'
  #get 'books' => 'books/new'
  #get 'books/:id' => 'books#show',as:'book'
  #get 'books/:id/edit' => 'books#edit',as:'edit_book'
  patch 'books/:id' => 'books#update',as:'update_book'
  #get 'books/delete/:id' => 'books#destroy',as:'destory_book'
  
  root to: 'books#top'

	resources :books
  
end
