class TeamsController < ApplicationController

  def index
    #if current_student
     # @teams = Student.find(current_student.id).teams
    #else
      @teams = Team.where(project_id: params[:project_id])
      @project_id = params[:project_id]
    end 
  #end 

  def new
    @team = Team.new
    @project_id = params[:project_id]
  end 

  def create
    @team = Team.new(
                    name: params[:name],
                    project_id: params[:project_id]
                    )
    @team.save
  end 
end
