Rails.application.routes.draw do
  #get 'home/index'
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'home/library'
  # Defines the root path route ("/")
  # root "articles#index"
  get 'home/about'
  get 'home/owner'
  get 'home/breed'
  get 'home/info/:id', to: 'home#info', as: 'info'
  get 'home/ownerInfo/:id', to: 'home#ownerInfo', as: 'ownerInfo'
  get 'home/search'

end
