Rails.application.routes.draw do
  get 'posts/index'

    get "log_out" => "sessions#destroy", :as => "log_out"
    get "log_in" => "sessions#new", :as => "log_in"
    get "sign_up" => "users#new", :as => "sign_up"
    root :to => "sessions#new"
    resources :users
    resources :sessions
    resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
