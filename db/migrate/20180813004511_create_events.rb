class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :event_title
      t.string :description
      t.datetime :event_date
      t.string :start_time
      t.string :end_time
      t.integer :user_id
      t.timestamps
    end
  end
end
