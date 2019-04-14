Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :school_class, only: [:index, :create, :new, :show, :edit, :update]
  resources :students, only: [:index, :create, :new, :show, :edit, :update]
end
