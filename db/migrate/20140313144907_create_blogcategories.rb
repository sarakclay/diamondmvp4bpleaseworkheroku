class CreateBlogcategories < ActiveRecord::Migration
  def change
    drop_table :blogcategories
    create_table :blogcategories do |t|
      t.string :category
      t.timestamps
    end
  end
end
