class EmployeeSanctionWorking < ActiveRecord::Base

	self.table_name = 'employee_sanction_working'
	belongs_to:hospital
	belongs_to:employee
	has_many:hospital_performas
	has_many:performaones
end
