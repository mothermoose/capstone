class ProjectsController < ApplicationController 

  def index
    if current_teacher 
     @projects = Project.where(teacher_id: current_teacher.id)
     else 
      flash[:warning] = "You need to sign in to see your Projects"
      redirect_to '/teacher_login'
     #@projects = Project.where(team_id: )
     #@team_hashes = Student.find(current_student.id).teams

    end 
  end  

  def new
    @project = Project.new
  end 

  def create
    @project = Project.new(
                  name: params[:name],
                  teacher_id: current_teacher.id,
                  subject:params[:subject],
                  description: params[:description]
                   )
    @project.save
  end 

  def show
    @project = Project.find (params[:id])
  end 

end
