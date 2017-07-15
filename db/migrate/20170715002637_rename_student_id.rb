class RenameStudentId < ActiveRecord::Migration[5.1]
  def change 
    rename_column :class_attendances, :student_id, :learner_id
  end
end
