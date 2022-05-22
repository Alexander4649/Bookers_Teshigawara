Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/' => 'books#top'
  get '/books' => 'books#new'
  post 'books' => 'books#create'
end
