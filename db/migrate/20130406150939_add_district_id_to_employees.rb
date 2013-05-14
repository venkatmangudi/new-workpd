class AddDistrictIdToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :district_id, :integer
  end
end
