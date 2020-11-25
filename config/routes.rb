Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations'}
  get 'home', :to => 'home#search'
  resources :registers
  root to: "students#index"
  resources :students
  resources :institutions
end
  
  
