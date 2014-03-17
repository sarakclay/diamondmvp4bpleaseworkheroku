class RemoveBlogtagFromBlogs < ActiveRecord::Migration
 def change
      remove_column :blogs, :blogtag_id, :integer
  end
end
