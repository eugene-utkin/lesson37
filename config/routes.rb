Rails.application.routes.draw do
  get 'home/index' => 'home#index'
  get '/terms' => 'terms#index'
  get '/about' => 'about#index'

  resource :contacts, only: [:new, :create], path_names: { :new => '' }
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
