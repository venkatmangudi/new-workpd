class AddDivisionIdToSanctionedPosts < ActiveRecord::Migration
  def change
    add_column :sanctioned_posts, :division_id, :integer
  end
end
