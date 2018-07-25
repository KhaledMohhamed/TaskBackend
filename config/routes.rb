Rails.application.routes.draw do
  resources :users do
    resource :invests
  end
  resources :marketassets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
