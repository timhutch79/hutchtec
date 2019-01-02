Rails.application.routes.draw do
  resources :people




  devise_for :users
  root 'pages#home'
  get 'hr' => 'pages#hr'
  get 'it' => 'pages#it'
  get 'ohs' => 'pages#ohs'
  get 'newuser' => 'pages#newuser'
  get 'dashboard' => 'pages#dashboard.html.erb'
  get 'form' => 'pages#form'
  get 'people' => 'pages#people'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
