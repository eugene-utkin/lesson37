Rails.application.routes.draw do
  get 'home/index'
  get 'home/contacts'
  post 'home/index'

  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
