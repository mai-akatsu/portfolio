Rails.application.routes.draw do
  resources :users do
    member do
      get :likes
    end
  end

  get "signup" => "users#new"
  post "login" => "users#login"
  post "logout" => "users#logout"
  get "login" => "users#login_form"

  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  delete "posts/:id" => "posts#destroy"

  post "likes/:post_id/create" => "likes#create"
  post "likes/:post_id/destroy" => "likes#destroy"
  
  get "/" => "home#top"
  get "about" => "home#about"
end
