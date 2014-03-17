class RemoveTaggingFromBlogs < ActiveRecord::Migration
  def change
      remove_column :blogtags, :tagging_id, :integer
      remove_column :blogs, :tagging_id, :integer
  end
end
