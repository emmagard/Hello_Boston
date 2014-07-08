class CreateCollectionItems < ActiveRecord::Migration
  def change
    create_table :collection_items do |t|

      t.timestamps
    end
  end
end
