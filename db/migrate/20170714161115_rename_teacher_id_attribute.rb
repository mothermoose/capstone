class RenameTeacherIdAttribute < ActiveRecord::Migration[5.1] 
  def change
    rename_column :projects, :teacher_id, :student_id
  end
end
