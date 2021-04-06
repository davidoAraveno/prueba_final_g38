Rails.application.routes.draw do
  root 'markers#index'
  post 'markers/create', to: 'markers#create', as: 'm_c'
  get 'markers/show/:id', to: 'markers#show', as: 'm_s'
  patch 'markers/update/:id', to: 'markers#update', as: 'm_u'

  get 'categories', to: 'markers#categories_endpoint', as: 'm_c_e'

  delete 'markers/delete/:id', to: 'markers#destroy', as: 'm_d'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
