Rails.application.routes.draw do
  root 'tasks#index'
  resources :tasks do 
    collection do
      delete 'destroy_all'
    end
    
    member do 
      delete 'complete'
    end
    
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
