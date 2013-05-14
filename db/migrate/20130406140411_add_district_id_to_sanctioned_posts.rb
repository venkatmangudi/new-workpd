class AddDistrictIdToSanctionedPosts < ActiveRecord::Migration
  def change
    add_column :sanctioned_posts, :district_id, :integer
  end
end
