class AddDepthToProducts < ActiveRecord::Migration
  def change
    add_column :products, :depth, :integer
  end
end
