class AddPasswordToStudents < ActiveRecord::Migration
  def change
    add_column :students, :password, :string
    add_column :students, :password_confirmation, :string
    add_column :students, :password_digest, :string
  end
end
