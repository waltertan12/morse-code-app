Rails.application.routes.draw do

  root 'static_pages#home'
  get 'about' => 'static_pages#about'
  get 'message' => 'morses#new'

  resources :morses

end
