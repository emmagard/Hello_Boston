class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :collection
  has_many :collection_item_types
end
