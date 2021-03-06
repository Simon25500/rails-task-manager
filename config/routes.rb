Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "tasks#index"
  get "/tasks/new", to: 'tasks#new'
  get "tasks//:id/edit", to: 'tasks#edit'
  post "/tasks/:id/update", to: 'tasks#update'
  get "/tasks/:id" , to: 'tasks#show'
  post "/tasks/create" ,to: 'tasks#create'
  delete "/tasks/:id", to: "tasks#destroy"
end
