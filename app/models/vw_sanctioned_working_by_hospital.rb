class VwSanctionedWorkingByHospital < ActiveRecord::Base
	self.table_name = 'vw_sanctioned_working_by_hospital'
 attr_accessible  :class_1_sanctioned
 belongs_to:hospital
end
