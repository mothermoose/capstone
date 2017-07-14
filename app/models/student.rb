class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]

  
  has_many :class_attendances
  has_many :student_teams
  has_many :teams, through: :student_teams 

  def self.from_omniauth(auth)
  where(provider: auth.provider, uid: auth.uid).first_or_create do |student|
    student.email = auth.info.email
    student.password = Devise.friendly_token[0,20]
    student.name = auth.info.name   # assuming the student model has a name
    student.Image = auth.info.image # assuming the user model has an image
    # If you are using confirmable and the provider(s) you use validate emails, 
    # uncomment the line below to skip the confirmation emails.
    # user.skip_confirmation!
  end
  end
end

