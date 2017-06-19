Rails.application.routes.draw do
  root 'prjcts#index'

  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :prjcts, except: [:index] do
  	resources :pictures, except: [:show, :index]
  	resources :comments
  	member do 
  		get 'like'
  		get 'unlike'
  	end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
