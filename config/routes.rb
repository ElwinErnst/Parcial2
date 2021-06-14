Rails.application.routes.draw do
  resources :appointments
  resources :guards
  resources :medical_centers
  resources :workers
  resources :medical_center_types
  resources :worker_types
  devise_for :users
  root to: 'medical_centers#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
