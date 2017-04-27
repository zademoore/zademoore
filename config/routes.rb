Rails.application.routes.draw do
  root 'prjcts#index'

  resources :prjcts do
  	resources :pictures, except: [:show, :index]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end