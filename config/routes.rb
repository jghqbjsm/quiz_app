Rails.application.routes.draw do
  get 'static_pages/home'
  
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  
  get 'signup'  => 'students#new'

  
  
  get 'static_pages/about'
  resources :students
  
  root 'students#new'
 
end