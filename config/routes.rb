Rails.application.routes.draw do
  resources :oenologist_magazines
  resources :megazines
  resources :assignments
  resources :roles
  devise_for :users
  get 'home/index'
  resources :wines_oenologists
  resources :oenologists
  resources :wine_strains
  resources :strains
  resources :wines


  root to: "wines#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
