class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name 
      t.string :password
      t.string :email 
      t.string :bio
      t.string :credentials 
      t.integer :age 
      t.string :profile_pic
    end
  end
end
