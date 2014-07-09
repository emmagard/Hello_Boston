class DropCollectionItems < ActiveRecord::Migration
  def up
    drop_table :collection_items
  end

  def down
    create_table :collection_items
  end
end
