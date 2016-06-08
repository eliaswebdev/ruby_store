Rails.application.routes.draw do

  get '/contatos' => 'contatos#index', as: :contatos

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

  root 'pages#home'
end
