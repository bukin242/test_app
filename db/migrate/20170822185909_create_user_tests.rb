class CreateUserTests < ActiveRecord::Migration[5.1]
  def change
    create_table :user_tests do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
