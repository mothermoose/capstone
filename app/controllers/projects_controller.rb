class ProjectsController < ApplicationController 

  def index
    @projects = Project.all
  end  

  def new
    @project = Project.new
  end 

  def create
    @project = Project.new(
                  name: params[:name],
                  teacher_id: params[:teacher_id],
                  subject:params[:subject],
                  description: params[:description]
                   )
    @project.save
  end 

  def show
    @project = Project.find (params[:id])
  end 

end
