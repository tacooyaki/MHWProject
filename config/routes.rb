Rails.application.routes.draw do
  get 'weapons/index'
  get 'armors/index'
  root 'static_pages#home'

  get 'about', to: 'static_pages#about'

end
