Rails.application.routes.draw do
  root 'prjcts#index'

  get '/login', to: 'sessions#new', as: :login
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: 'sessions#failure'
  get '/logout', to: 'sessions#destroy'


  resources :prjcts, except: [:index] do
  	resources :pictures, except: [:show, :index]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
