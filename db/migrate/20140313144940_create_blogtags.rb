class CreateBlogtags < ActiveRecord::Migration
  def change
    create_table :blogtags do |t|
      t.string :tag
      t.timestamps
    end
  end
end
