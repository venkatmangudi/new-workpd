class AddHospitalIdToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :hospital_id, :integer
  end
end
