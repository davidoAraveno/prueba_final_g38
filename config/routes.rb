Rails.application.routes.draw do
  root 'markers#index'
  post 'markers/create', to: 'markers#create', as: 'm_c'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
