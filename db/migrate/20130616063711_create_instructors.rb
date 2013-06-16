class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :last_name
      t.string :first_name
      t.string :school
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
