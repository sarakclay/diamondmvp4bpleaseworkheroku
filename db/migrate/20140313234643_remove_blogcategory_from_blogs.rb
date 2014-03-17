class RemoveBlogcategoryFromBlogs < ActiveRecord::Migration
    def change
    remove_column :blogs, :blogcategory, :string
    remove_column  :blogs, :blogtag, :string
    end
end
