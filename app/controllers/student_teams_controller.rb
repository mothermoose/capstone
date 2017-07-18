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
  
    student_team = StudentTeam.new(
                    student_id: params[:student_id],
                    team_id: params[:team_id],
                    assignment_link: params[:assignment_link]
                    ) 
    student_team.save
    project = Team.find(params[:team_id]).project 
  
  if current_student.admin
    redirect_to "/projects/#{project.id}/teams/"
  else
    redirect_to "/teams/#{team.id}"
  end
end
end
