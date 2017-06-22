class TeamsController < ApplicationController

  def index
    #if current_student
     # @teams = Student.find(current_student.id).teams
    #else
      # @teams = Team.where(project_id: params[:project_id])
      # @project_id = params[:project_id]

      @project = Project.find(params[:project_id])
      @teams = @project.teams
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

  def show
    @team = Team.find_by(id:params[:id])
    @teacher = @team.teacher
    @project = @team.project
    @student_team = StudentTeam.new(
                    student_id: params[:student_id],
                    team_id: params[:team_id]
                    ) 

    @student_team.save
  end 
  
end
