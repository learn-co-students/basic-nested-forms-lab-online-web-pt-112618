Rails.application.routes.draw do

  resources :recipes, only: [:new, :show, :new, :create]

end
