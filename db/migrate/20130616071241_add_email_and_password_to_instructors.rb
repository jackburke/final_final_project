class AddEmailAndPasswordToInstructors < ActiveRecord::Migration
  def change
    add_column :instructors, :email, :string
    add_column :instructors, :password, :string
    add_column :instructors, :password_confirmation, :string
    add_column :instructors, :password_digest, :string
  end
end
