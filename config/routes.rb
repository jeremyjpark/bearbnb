Rails.application.routes.draw do
  resource :session, :only => [:new, :create, :destroy]
  resources :users, :only => [:new, :create, :show]
  root :to => "api/places#index"

  namespace :api, defaults: { format: :json } do
    resources :places
   end
end