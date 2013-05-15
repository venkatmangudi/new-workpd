class AddContractStartDateAndContractEndDateToEmployeeWorkDetails < ActiveRecord::Migration
  def change
    add_column :employee_work_details, :contract_start_date, :date
    add_column :employee_work_details, :contract_end_date, :date
  end
end
