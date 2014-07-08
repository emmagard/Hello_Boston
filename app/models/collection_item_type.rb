class CollectionItemType < ActiveRecord::Base
  belongs_to :typeable, polymorphic: true
end
