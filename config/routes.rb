Rails.application.routes.draw do
    devise_for :users
    namespace :api do
      namespace'v1' do
          mount_devise_token_auth_for 'User', at: 'auth'
      end
      resources :users
      resources :topics do
          resources :comments
      end
    end
    mount API => '/'
end
