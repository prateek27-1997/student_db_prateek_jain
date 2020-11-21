Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations'}
  root to: "students#index"
  namespace :api do
    resources :registers, only: [:create]
  end
  resources :students
  resources :institutions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
