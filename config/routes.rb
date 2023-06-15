Rails.application.routes.draw do
  get 'users/index'
  get 'users/:id' => 'users#show'
  get 'signup' => 'users#new'
  post 'users/create' => 'users#create'
  
  get 'posts/index'
  get 'posts/new' => 'posts#new'
  get 'posts/:id' => 'posts#show'
  post 'posts/create' => 'posts#create'
  get 'posts/:id/edit' => 'posts#edit'
  post 'posts/:id/update' => "posts#update"
  delete "posts/:id" => "posts#destroy"

  get '/' => "home#top"
  get 'about' => "home#about"
end
