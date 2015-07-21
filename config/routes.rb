Rails.application.routes.draw do
  resources :twitters
  root "twitters#index"
end
