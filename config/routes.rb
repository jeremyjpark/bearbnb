Rails.application.routes.draw do
  resource :session, :only => [:new, :create, :destroy]
  resources :users, :only => [:new, :create, :show, :index]
  root :to => "places#index"
  resources :places do
    resources :cheers, :only => [:create]
  end
  resources :cheers, :only => [:index]
  resources :comments, :only => [:create]
end
