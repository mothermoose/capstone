class Team < ApplicationRecord
  belongs_to :project
  has_one :student, through: :project
  has_many :student_teams
  has_many :students, through: :student_teams
  has_many :team_tasks
  has_many :tasks, through: :team_tasks
end
