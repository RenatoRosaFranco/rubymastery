Rails.application.routes.draw do

  # API
  # @implemented
  namespace :api, path: '/', constraints: { subdomain: 'api' } do 
    namespace :v1 do 
      # some code here
    end
  end

  # Dashboard
  # @implemented
  namespace :dashboard do 
    get '', to: 'home#index'
    resources :courses, only: [:index, :show]
    resources :profile, only: [:index, :show]
    resources :account, only: [:index]
  end

  # Application
  # @implemented
  root to: 'home#index'
  devise_for :users

  resources :courses, only: [:index, :show]
  resources :pricing, only: [:index]
end
