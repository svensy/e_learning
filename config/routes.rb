Rails.application.routes.draw do

  namespace :admin do
    resources :categories
resources :lessons
resources :users
resources :words

    root to: "categories#index"
  end

  get 'sessions/new'

  root             'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :users do
    resources :words
    resources :lessons
  end
  
  resources :categories

end