class CreateTeamTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :team_tasks do |t|
      t.integer :team_id
      t.integer :task_id
      t.boolean :complete

      t.timestamps
    end
  end
end
