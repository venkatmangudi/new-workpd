class AddBlockIdToSanctionedPosts < ActiveRecord::Migration
  def change
    add_column :sanctioned_posts, :block_id, :integer
  end
end
