Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations'}
  root 'dashboard#index'
  root to: "students#index"
  namespace :api do
    resources :students, only: [:create]
  end
  resources :students
  resources :institutions
end
  
  
