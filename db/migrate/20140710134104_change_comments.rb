class ChangeComments < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.belongs_to :user
      t.belongs_to :post
    end
  end
end
