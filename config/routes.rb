Rails.application.routes.draw do

  # profiles
  resources :profiles, :controller => 'muck/profiles'
  resources :users do
    resource :profile
  end

  # admin
  namespace :admin do
    resources :profiles, :controller => 'muck/profiles'
  end

end
