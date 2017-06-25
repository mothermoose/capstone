class StudentTeamsController < ApplicationController

  def index
  end 

  def new
    @student_team = StudentTeam.new
    @project_id = params[:project_id]
    @team_id = params[:team_id]
    @class_attendance = params[:class_attendance]
  end 

  def create
    @student_team = StudentTeam.new(
                    student_id: params[:student_id],
                    team_id: params[:team_id]
                    ) 
    @student_team.save
    @team = Team.find_by(id: params[:team_id])
    @teacher = current_teacher
    @students = @team.students

    

    render "teams/show"
  end 

end
