class CreateRobots < ActiveRecord::Migration[7.1]
  def change
    create_table :robots do |t|
      t.text :overview
      t.string :model
      t.float :price
      t.float :rating
      t.text :image_urls, array: true, default: []
      t.integer :user_id

      t.timestamps
    end
  end
end
