class Blogcategory < ActiveRecord::Base
  has_many :blogs, inverse_of: :blogcategory
end
