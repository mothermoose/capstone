class TeachersController < ApplicationController

  def new
    @teacher = Teacher.new
  end 

  def create
    @teacher = Teacher.new(
                  first_name: params[:first_name],
                  last_name: params[:last_name],
                  email:params[:email],
                  password: params[:password]
                   )
    @teacher.save
  end 
end
