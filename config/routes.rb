Rails.application.routes.draw do

  # CREATE : 1) get a new task 2) post a new task
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  # READ: 1) list all 2) get all details for one
  get "tasks", to: "tasks#index"

  get "tasks/:id", to: "tasks#show", as: :task # le as: :task permet de définir le préfixe des routes

  # UPDATE: 1) get the form 2) edit the form

  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  # DELETE: 1) destroy by id

  delete "tasks/:id", to: "tasks#destroy", as: :destroy_task

end
