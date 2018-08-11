Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :show]
      resources :scores, only: [:index, :create, :show, :destroy]
      get '/current_user', to: 'users#current'
    end
  end

  resources :sessions, only: [:create] #login

end
