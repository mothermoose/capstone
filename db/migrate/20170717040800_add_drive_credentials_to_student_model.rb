class AddDriveCredentialsToStudentModel < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :drive_credentials, :text
  end
end
