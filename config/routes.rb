Rails.application.routes.draw do
#  Root 'movies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :movies do 
  resource :users
end
end
