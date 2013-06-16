class RemovePasswordDigestFromInstructors < ActiveRecord::Migration
  def self.up
  end

  def self.down
    remove_column :instructors, :password_digest
  end
end
