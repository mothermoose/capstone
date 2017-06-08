class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.integer :student_id
      t.integer :project_id
      t.string :completed_project

      t.timestamps
    end
  end
end
