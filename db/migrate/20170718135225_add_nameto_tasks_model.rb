class AddNametoTasksModel < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :name, :string
  end
end
