class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :class_attendances
  has_many :teachers, through: :class_attendances 
  has_many :student_teams
  has_many :teams, through: :student_teams
end

