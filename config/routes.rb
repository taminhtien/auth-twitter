Rails.application.routes.draw do
  get '/auth/:provider/callback', to: 'sessions#create'
  resources :tweets
  root "tweets#index"
end
