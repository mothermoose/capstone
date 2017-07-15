class MyTeachersController < ApplicationController
  def add_student_form
    @students = Student.all
    @my_students = current_student.teachers
  end

  def add_student
    @student = Student.find(params[:student_id])

    ClassAttendance.create(
                          student_id: current_student.id,
                          teacher_id: @student.id
                          )
    redirect_to '/add_student'
  end 
end
