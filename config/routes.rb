Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  resources :wines_oenologists
  resources :oenologists
  resources :wine_strains
  resources :strains
  resources :wines


  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
