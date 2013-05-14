class CreateGraphEmployeeStatusByBands < ActiveRecord::Migration
  def change
    create_table :graph_employee_status_by_bands do |t|

      t.timestamps
    end
  end
end
