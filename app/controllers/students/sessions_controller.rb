class Students::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end 
  def index
    @students = Student.all
    @my_students = current_student.students
    
    if current_students.admin
      @students = Student.all
    else 
      flash[:warning] = "You need to sign in to see your Students"
      redirect_to '/students/sign_in'
    end 
  end 

  def show
    @student = Student.find (params[:id])
  end  

end 


