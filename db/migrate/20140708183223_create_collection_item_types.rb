class CreateCollectionItemTypes < ActiveRecord::Migration
  def change
    create_table :collection_item_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
