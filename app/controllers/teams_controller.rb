class TeamsController < ApplicationController


  before_action :authenticate_student!

  def index
    if !current_student.admin
     @teams = Student.find(current_student.id).teams
    else
      redirect_to "/projects"
    end 

  end 

  def new
    @team = Team.new
    @project = Project.find(params[:project_id])
  end 

  def create
    @team = Team.new(
                    name: params[:name],
                    project_id: params[:project_id]
                    )
    if @team.save 
      @team.project.tasks.each do |task|
        TeamTask.find_or_create_by(
                  team_id: @team.id,
                  task_id: task.id
                  )
      end                    
    end
  end 

  def show
    @team = Team.find(params[:id])
    @teacher = @team.teacher
    @project = @team.project
    @student_team = StudentTeam.new
    @team_id = params[:id]
    @students = @team.students
    @tasks = @team.project.tasks
  end 
end
