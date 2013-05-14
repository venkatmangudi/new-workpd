class CreateGraphEmployeeStatuses < ActiveRecord::Migration
  def change
    create_table :graph_employee_statuses do |t|

      t.timestamps
    end
  end
end
