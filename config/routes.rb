Rails.application.routes.draw do
  # devise_for :students
  # devise_for :students, controllers: { sessions: 'students/sessions' }
  # devise_for :teachers 

  devise_for :students, controllers: { omniauth_callbacks: 'students/omniauth_callbacks' }
#The code below is suggested to replace the above code. need to research.
#   devise_scope :user do
#   get "/auth/:provider/callback" => "authentications#create"
# end

  # authenticated :teacher do
  # root :to => "projects#index"
  # end

root to:'home#index'

  devise_scope :student do 
    get '/students/sign_out' => 'devise/sessions#destroy'
    get '/students' => 'students/sessions#index'
    get '/students/:id' => 'students/sessions#show'
    get "/registerstudent" => "students/registrations#registerstudentnew"
    post "/registerstudent" => "students/registrations#registerstudentcreate"
  end

  get '/add_student' => 'my_teachers#add_student_form'
  post '/add_student' => 'my_teachers#add_student'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html 

  # get '/projects' => 'projects#index'
  # get '/projects/new' => 'projects#new'
  # post '/projects' => 'projects#create' 
  # get '/projects/:id' =>'projects#show'

  # get "/teachers/new" => "teachers#new"
  # post "/teachers" => "teachers#create"

  # get "/students" => 'students#index'
  # get "/students/new" => "students#new"
  # post "/students" => "students#create"
  # get '/students/:id' =>'students#show' 

  # get "/student_login" => "student_sessions#new"
  # post "/student_login" => "student_sessions#create"
  # get "/student_logout" => "student_sessions#destroy"

  # get "/teacher_login" => "teacher_sessions#new"
  # post "/teacher_login" => "teacher_sessions#create"
  # get "/teacher_logout" => "teacher_sessions#destroy"

  # get "/registerstudent" => "students/registrations#registerstudentnew"
  # post "/registerstudent" => "students/registrations#registerstudentcreate"

get "/projects/:project_id/teams" => "teams#index"

resources :projects do 
    resources :teams
    resources :tasks
  end

  get "/teams" => "teams#index"
  get "/projects/:project_id/teams/new" => "teams#new"
  post "/teams/" => "teams#create" 
  get "teams/:id" => "teams#show"
  patch "teams/:id" => "teams#update"

  post "student_teams" => "student_teams#create"

  get "/tasks" => "tasks#index"
  get "/tasks/new" => "tasks#new"
  post "/tasks" => "tasks#create"

  get "/class_attendences" => "class_attendences#index"

  



end
