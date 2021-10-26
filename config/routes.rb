Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users
  resources :posts
  resources :comments
end
