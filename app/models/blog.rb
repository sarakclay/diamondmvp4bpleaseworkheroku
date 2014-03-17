class Blog < ActiveRecord::Base
  belongs_to :blogcategory, inverse_of: :blog
  has_many :taggings
  has_many :blogtags, through: :taggings
end
