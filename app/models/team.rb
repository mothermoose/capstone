class Team < ApplicationRecord
  belongs_to :project
  has_one :teacher, through: :project
  has_many :student_teams
  has_many :students, through: :student_teams

end
