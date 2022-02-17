Rails.application.routes.draw do
  resources :lists
    resources :bookmarks, only: [ :new, :create, :destroy ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
