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

  end 

end
