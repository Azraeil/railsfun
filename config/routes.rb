Rails.application.routes.draw do
  devise_for :managers
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :statics , :only => [:index]
  root "statics#index"

  resources :items , :only => [:index, :show]
  namespace :dashboard do
    resources :orders

    namespace :asdkjh do
      resources :items
      resources :categories
      resources :orders

      resources :users
      resources :managers
    end
  end

end
