Rails.application.routes.draw do

  get '/contatos' => 'contatos#index', as: :contatos

  resources :products, only: [:index, :show] do

    member do 
      get :like  
      get :dislike
    end

  end

  namespace :admin do
  	root 'products#index'
    
    resources :categories do
      member do
        patch :ativar   
        patch :desativar
        patch :change_status 
      end

      collection do

      end
    end

    resources :posts
    resources :products
    resources :users
  end

  devise_for :users, controllers: {:registrations => "users/registrations"}

  root 'products#index'
end
