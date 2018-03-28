Rails.application.routes.draw do
  root 'authors#index'	
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
  resources :authors, only: [:index, :show, :new, :create, :edit, :update]
end
