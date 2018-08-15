Rails.application.routes.draw do
  namespace :api do
    get 'v1/music_events'
  end
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :show]
      resources :scores, only: [:index, :create, :show, :destroy]
      resources :events, only: [:index, :create, :show, :update, :destroy]
      resources :comments, only: [:index, :create, :show, :update, :destroy]

      get '/current_user', to: 'users#current'
    end
  end

  resources :sessions, only: [:create] #login

end
