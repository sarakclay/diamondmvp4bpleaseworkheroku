class CreateBlogs < ActiveRecord::Migration
  def change

    create_table :blogcategories do |t|
      t.string :category
      t.timestamps
    end

    create_table :blogs do |t|
      t.belongs_to :blogcategory
      t.string :title
      t.string :subhead
      t.string :author
      t.date :date
      t.text :text
      t.string :image
      t.timestamps
    end

  end

end
