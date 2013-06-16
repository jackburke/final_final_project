class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :last_name
      t.string :first_name
      t.string :school
      t.string :city
      t.string :state
      t.integer :instructor_id
      t.integer :grad_year

      t.timestamps
    end
  end
end
