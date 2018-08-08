Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :show]
      resources :scores, only: [:index, :create, :show]
      # get '/current_user', to: 'users#current_user'
    end
  end

  resources :sessions, only: [:create] #login

end
