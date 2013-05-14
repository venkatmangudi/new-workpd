class CreateEmployeeSanctionWorkings < ActiveRecord::Migration
  def change
    create_table :employee_sanction_workings do |t|

      t.timestamps
    end
  end
end
