Rails.application.routes.draw do

  get '/contatos' => 'contatos#index', as: :contatos

  namespace :admin do
    resources :categories
    resources :posts
    resources :products
    resources :users
  end

  devise_for :users, controllers: {:registrations => "users/registrations"}

  root 'pages#home'
end
