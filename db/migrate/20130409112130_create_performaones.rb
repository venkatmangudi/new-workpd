class CreatePerformaones < ActiveRecord::Migration
  def change
    create_table :performaones do |t|
      t.integer :employee_id
      t.integer :leave_taken
      t.integer :patients_opd
      t.integer :patients_admit
      t.integer :patients_ref
      t.integer :emer_calls
      t.integer :emer_duty
      t.integer :mlc_perf
      t.integer :postmor_perf
      t.integer :court_presence
      t.integer :op_major
      t.integer :op_minor
      t.integer :op_caesarion
      t.integer :lab_tests
      t.integer :image_tests
      t.integer :equip
      t.integer :equipdetail
      t.integer :equipdefic

      t.timestamps
    end
  end
end
