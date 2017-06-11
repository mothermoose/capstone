Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html 

  get 'projects' => 'projects#index'
  get 'projects/new' => 'projects#new'
  post 'projects' => 'projects#create'

  get "/teachers/new" => "teachers#new"
  post "/teachers" => "teachers#create"

  get "/students" => 'students#index'
  get "/students/new" => "students#new"
  post "/students" => "students#create"

  get "/teams" => "teams#index"
  get "/teams/new" => "teams#new"
  post "/teams" => "teams#create" 

  get "/tasks" => "tasks#index"
  get "/tasks/new" => "tasks#new"
  post "/tasks" => "tasks#create"



end
