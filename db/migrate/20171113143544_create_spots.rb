class CreateSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :spots do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
