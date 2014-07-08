class AddAssociationToPost < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.belongs_to :user
      t.belongs_to :collection
    end
  end
end
