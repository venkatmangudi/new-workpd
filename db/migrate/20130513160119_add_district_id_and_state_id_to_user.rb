class AddDistrictIdAndStateIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :district_id, :integer
    add_column :users, :state_id, :integer
  end
end
