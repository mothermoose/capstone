class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end

# def current_teacher
#   @current_teacher ||= Teacher.find_by(id: session[:teacher_id]) if session[:teacher_id]
# end 
 
# def current_student
#   @current_student ||= Student.find_by(id: session[:student_id]) if session[:student_id]
# end 

private

def authenticate_user!
    redirect_to "/" unless current_user
  end 