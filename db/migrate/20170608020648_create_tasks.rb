class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.date :deadline
      t.integer :points
      t.string :description
      t.integer :project_id

      t.timestamps
    end
  end
end
