class DropCollectionItemTypes < ActiveRecord::Migration
  def change
    drop_table :collection_item_types
  end
end
