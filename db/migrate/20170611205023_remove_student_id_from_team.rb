class RemoveStudentIdFromTeam < ActiveRecord::Migration[5.1]
  def change
    remove_column :teams, :student_id, :integer
  end
end
