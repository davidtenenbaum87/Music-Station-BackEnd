class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :page
      t.string :measure
      t.string :description
      t.integer :score_id

      t.timestamps
    end
  end
end
