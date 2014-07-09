class ChangePosts < ActiveRecord::Migration
  def change
    remove_column :posts, :collection_id, :integer
  end
end
