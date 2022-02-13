Rails.application.routes.draw do

  resources :clients
  devise_for :users
  resources :posts

  #devise_for :users
  #resources :friends
  #get 'home/index'
  get 'home/about'
  get 'home/uslugi'
  get 'home/klienci'
  get 'home/kontakt'
  get 'home/artykuly'
  get 'home/forum'
  get 'home/mojaksiazka'
  root 'home#index'
# root 'friends#index'
scope module: 'users' do
  resources :posts do
  resources :elements
  
  
end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

