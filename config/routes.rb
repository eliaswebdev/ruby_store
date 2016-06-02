Rails.application.routes.draw do


  devise_for :users
  
  root 'pages#home'

  get '/contatos' => 'contatos#index', as: :contatos

  namespace :admin do
    resources :categories
    resources :posts
    resources :products
  end

end
