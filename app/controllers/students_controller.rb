class StudentsController < ApplicationController

  def index
    if current_teacher
      @students = Student.all
    else 
      flash[:warning] = "You need to sign in to see your Students"
      redirect_to '/teacher_login'
    end 
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
   if @student.save
    @class_attendance = ClassAttendance.new(
                        student_id: @student.id,
                        teacher_id: current_teacher.id
                          )
      @class_attendance.save
    end 
  end 

  def show
    @student = Student.find (params[:id])
  end 
end
