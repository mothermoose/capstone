class AddAssignmentToStudentTeams < ActiveRecord::Migration[5.1]
  def change
    add_column :student_teams, :assignment_link, :string
  end
end
