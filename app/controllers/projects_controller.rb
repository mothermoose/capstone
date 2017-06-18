class ProjectsController < ApplicationController 

  def index
    @projects = Project.where(teacher_id: current_teacher.id)
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
