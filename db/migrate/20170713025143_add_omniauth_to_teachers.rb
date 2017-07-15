class AddOmniauthToTeachers < ActiveRecord::Migration[5.1]
  def change
    add_column :teachers, :provider, :string
    add_column :teachers, :uid, :string
    add_column :teachers, :name, :string
    add_column :teachers, :Image, :string
  end
end
