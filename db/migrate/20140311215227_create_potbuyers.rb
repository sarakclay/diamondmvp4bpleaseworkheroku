class CreatePotbuyers < ActiveRecord::Migration
  def change
    create_table :potbuyers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.text :ring_description
      t.timestamps
    end
  end
end
