class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :last_name
      t.string :first_name
      t.string :institution
      t.string :email

      t.timestamps
    end
  end
end
