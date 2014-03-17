class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :image_url
      t.string :name
      t.integer :ourprice
      t.integer :retailprice
      t.integer :carat
      t.string :clarity
      t.string :cut
      t.string :color
      t.string :shape
      t.timestamps
    end
  end
end
