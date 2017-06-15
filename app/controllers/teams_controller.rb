class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end 

  def new
    @team = Team.new
  end 

  def create
    @team = Team.new(
                    name: params[:name],
                    project_id: params[:project_id]
                    )
    @team.save
  end 
end
