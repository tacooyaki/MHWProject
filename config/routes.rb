Rails.application.routes.draw do
  get 'crafting_materials/index'
  get 'crafting_materials/show'
  get 'weapons/index'
  get 'armors/index'
  root 'static_pages#home'

  get 'about', to: 'static_pages#about'

  resources :armors, only: [:index, :show]
  resources :weapons, only: [:index, :show]
  resources :crafting_materials, only: [:index, :show]

end
