class CreateVwSanctionedWorkingByHospitals < ActiveRecord::Migration
  def change
    create_table :vw_sanctioned_working_by_hospitals do |t|

      t.timestamps
    end
  end
end
