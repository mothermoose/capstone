class TeacherSessionsController < ApplicationController 
  def new 
    render 'new.html.erb'
  end 

  def create
    teacher = Teacher.find_by(email: params[:email])

    if teacher && teacher.authenticate(params[:password])
      session[:teacher_id] = teacher.id
      flash[:success] = 'Successfully logged in!'
      redirect_to '/projects'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/teacher_login'
    end 
  end

  def destroy
    session[:teacher_id] = nil
    flash[:success] = 'Successfully logged out!' 
    redirect_to '/teacher_login'
  end 
end
