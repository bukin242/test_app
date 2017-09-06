class CreateUserCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :user_courses do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
