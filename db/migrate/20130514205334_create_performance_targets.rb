class CreatePerformanceTargets < ActiveRecord::Migration
  def change
    create_table :performance_targets do |t|
      t.string :entity
      t.integer :employee_cadre_id
      t.integer :hospital_type_id
      t.string :task
      t.integer :minimum_daily_work
      t.integer :minimum_monthly_work
      t.text :remarks

      t.timestamps
    end
  end
end
