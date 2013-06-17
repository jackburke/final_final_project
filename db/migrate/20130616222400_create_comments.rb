class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.string :last_name
      t.string :email
      t.string :remember_token
      t.integer :user_id
      t.integer :story_id

      t.timestamps
    end
  end
end
