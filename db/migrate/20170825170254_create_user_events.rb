class CreateUserEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :user_events do |t|
      t.integer :user_id
      t.integer :event_id
      t.string  :event_type
      t.timestamps
    end

    add_index :user_events, [:event_type, :event_id]
  end
end
