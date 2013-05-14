class AddDistrictsAndBlocksToDependents < ActiveRecord::Migration
  def change
    add_column :dependents, :district_id, :integer
    add_column :dependents, :block_id, :integer
  end
end
