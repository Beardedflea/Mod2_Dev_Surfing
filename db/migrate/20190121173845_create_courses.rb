class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.date :start_date
      t.date :end_date
      t.integer :teacher_id
      t.integer :skill_id
      t.integer :location_id
      t.string :img_url
    end
  end
end
