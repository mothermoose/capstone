class RenameLearnerId < ActiveRecord::Migration[5.1]
  def change
    rename_column :class_attendances, :learner_id, :student_id
  end
end
