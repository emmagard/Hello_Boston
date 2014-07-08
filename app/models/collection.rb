class Collection < ActiveRecord::Base
  has_many :collection_items, :posts

end
