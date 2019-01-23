class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :name 
      t.string :creator
      t.string :content
      t.string :img_url
    end
  end
end
