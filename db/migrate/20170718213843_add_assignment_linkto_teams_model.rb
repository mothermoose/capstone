class AddAssignmentLinktoTeamsModel < ActiveRecord::Migration[5.1]
  def change
    remove_column :student_teams, :assignment_link, :string
    add_column :teams, :assignment_link, :string
  end
end
