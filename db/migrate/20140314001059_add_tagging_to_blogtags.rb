class AddTaggingToBlogtags < ActiveRecord::Migration
  def change
    add_column :blogtags, :tagging_id, :integer
  end
end
