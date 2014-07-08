class AddAssociationToCollecionItem < ActiveRecord::Migration
  def change
    change_table :collection_items do |t|
      t.belongs_to :collection
    end
  end
end
