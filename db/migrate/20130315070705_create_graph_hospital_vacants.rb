class CreateGraphHospitalVacants < ActiveRecord::Migration
  def change
    create_table :graph_hospital_vacants do |t|

      t.timestamps
    end
  end
end
