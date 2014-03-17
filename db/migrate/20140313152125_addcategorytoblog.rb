class Addcategorytoblog < ActiveRecord::Migration
  def change
    add_column :blogs, :blogcategory, :string
    add_column :blogs, :blogtag, :string
  end
end
