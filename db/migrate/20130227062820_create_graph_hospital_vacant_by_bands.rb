class CreateGraphHospitalVacantByBands < ActiveRecord::Migration
  def change
    create_table :graph_hospital_vacant_by_bands do |t|

      t.timestamps
    end
  end
end
