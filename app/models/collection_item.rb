class CollectionItem < ActiveRecord::Base
  belongs_to :collection
  has_many :collection_item_types, as :typeable
end
