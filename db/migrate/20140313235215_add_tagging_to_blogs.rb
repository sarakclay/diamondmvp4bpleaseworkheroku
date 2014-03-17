class AddTaggingToBlogs < ActiveRecord::Migration
  def change
      add_column :blogs, :tagging_id, :integer
  end
end
