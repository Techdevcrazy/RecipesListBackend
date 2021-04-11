Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'recipes/:id', to: 'recipes#index'
  post 'recipes/:id', to: 'recipes#update'
  get 'recipes', to: 'recipes#list'
  get 'search', to: 'recipes#search'
end
