class TasksController < ApplicationController

  def index
    @tasks = Task.where(project_id: params[:project_id])
    @project_id = params[:project_id]
  end 

  def new
    @task = Task.new
  end 

  def create
    @task = Task.new(
                    deadline: params[:deadline],
                    points: params[:points],
                    description: params[:description],
                    project_id: params[:project_id],
                   )
    if @task.save 
      @task.project.teams.each do |team|
        TeamTask.find_or_create_by(
                        team_id: team.id,
                        task_id: @task
                        )
      end
    end
  end 

end
