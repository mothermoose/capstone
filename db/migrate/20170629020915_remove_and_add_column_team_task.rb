class RemoveAndAddColumnTeamTask < ActiveRecord::Migration[5.1]
  def change 
    remove_column :team_tasks, :complete, :boolean
    add_column :team_tasks, :complete, :boolean, default:false
  end
end
