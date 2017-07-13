class Students::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def google_oauth2
      # You need to implement the method below in your model (e.g. app/models/user.rb)
      @student = Student.from_omniauth(request.env['omniauth.auth'])

      if @student.persisted?
        flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
        sign_in_and_redirect @student, event: :authentication
      else
        session['devise.google_data'] = request.env['omniauth.auth'].except(:extra) # Removing extra as it can overflow some session stores
        redirect_to new_student_registration_url, alert: @student.errors.full_messages.join("\n")
      end 

    def self.from_omniauth(access_token)
    data = access_token.info
    student = Student.where(email: data['email']).first

    #Uncomment the section below if you want users to be created if they don't exist
    # unless user
    #     user = User.create(name: data['name'],
    #        email: data['email'],
    #        password: Devise.friendly_token[0,20]
    #     )
    # end
    student
end
  end
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  # You should also create an action method in this controller like this:
  # def twitter
  # end

  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end
end
