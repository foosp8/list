Rails.application.routes.draw do
  get 'cos', to: "cos#index", as: :cos

  get 'cos/new', to: "cos#new", as: :new_co

  get 'cos/:id', to: "cos#show", as: :co

  get 'cos/:id/edit', to: "cos#edit", as: :edit_co

  post 'cos', to: "cos#create"

  patch  'cos/:id', to: "cos#update"

  delete 'cos/:id', to: "cos#destroy", as: :delete_co


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
