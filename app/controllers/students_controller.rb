class StudentsController < ApplicationController

  def index
    @students = Student.all
  end 

  def new
    @student = Student.new
  end 

  def create
    @student = Student.new(
                        first_name: params[:first_name],
                        last_name: params[:last_name],
                        email:params[:email],
                        password: params[:password]
                          )
    @student.save
  end 

  def show
    @student = Student.find (params[:id])
  end 
end
