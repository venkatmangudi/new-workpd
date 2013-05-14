class CreateHospitalPerformas < ActiveRecord::Migration
  def change
    create_table :hospital_performas do |t|
      t.integer :division_id
      t.integer :district_id
      t.integer :outdoor
      t.integer :indoor
      t.integer :minor_surgery
      t.integer :major_surgery
      t.integer :normal_delivery
      t.integer :caesarion_delivery
      t.integer :pathology
      t.integer :image_scans
      t.integer :ultra_sound
      t.integer :ctmri
      t.integer :ecg
      t.integer :ecotmt
      t.integer :blood_unit_transfused
      t.integer :hemo
      t.integer :mlc
      t.integer :post_mortem
      t.text :remarks

      t.timestamps
    end
  end
end
