class Task < ApplicationRecord
  belongs_to :project
  has_many :team_tasks
  has_many :teams, through: :team_tasks
end
