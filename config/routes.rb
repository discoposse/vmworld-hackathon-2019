Rails.application.routes.draw do
  get 'podcast/index'
  get 'vmware/index'
  get 'turbonomic/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
