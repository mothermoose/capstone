class RemoveCompletedProjectFromTeam < ActiveRecord::Migration[5.1]
  def change
    remove_column :teams, :completed_project, :string
  end
end
