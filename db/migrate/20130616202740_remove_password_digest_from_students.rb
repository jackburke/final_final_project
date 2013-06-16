class RemovePasswordDigestFromStudents < ActiveRecord::Migration
  def self.up
  end

  def self.down
    remove_column :students, :password_digest
  end
end
