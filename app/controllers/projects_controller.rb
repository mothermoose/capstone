class ProjectsController < ApplicationController 
before_action :authenticate_student!

  def index
    if current_student.admin
     @projects = Project.where(teacher_id: current_student.id)
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
                  teacher_id: current_student.admin.id,
                  subject:params[:subject],
                  description: params[:description]
                   )
    @project.save
  end 

  def show
    @project = Project.find(params[:id])
  end 

end
