Rails.application.routes.draw do

  get 'comments/create'

  get 'comments/destroy'

  get 'posts/index'

    get "log_out" => "sessions#destroy", :as => "log_out"
    get "log_in" => "sessions#new", :as => "log_in"
    get "sign_up" => "users#new", :as => "sign_up"
    root :to => "sessions#new"
    resources :users
    resources :sessions
    resources :posts
    resources :friendships
    resources :comments, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
