class AddSecondaryReportingManagerAndReportingManagerToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :secondary_reporting_manager_id, :integer
    add_column :employees, :reporting_manager_id, :integer
  end
end
