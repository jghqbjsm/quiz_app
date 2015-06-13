Rails.application.routes.draw do
  get 'static_pages/home'
  
  get 'signup'  => 'students#new'
  
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  
  
  get 'static_pages/about'
  resources :students
  
  root 'students#new'
 
end