Rails.application.routes.draw do
  resources :car_styles
  resources :carclasses
  resources :accessories
  resources :brands
  resources :cars
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
