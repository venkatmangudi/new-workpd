class CreateEmployeeAgeByBands < ActiveRecord::Migration
  def change
    create_table :employee_age_by_bands do |t|

      t.timestamps
    end
  end
end
