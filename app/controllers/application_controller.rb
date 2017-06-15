class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end

def current_user
  @current_user ||= Teacher.find_by(id: session[:teacher_id]) if session[:teacher_id]
end 
 
private

def authenticate_user!
    redirect_to "/" unless current_user
  end 