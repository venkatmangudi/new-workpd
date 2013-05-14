class Performaone < ActiveRecord::Base
  attr_accessible :court_presence, :emer_calls, :emer_duty, :employee_id, :equip, :equipdefic, :equipdetail, :image_tests, :lab_tests, :leave_taken, :mlc_perf, :op_caesarion, :op_major, :op_minor, :patients_admit, :patients_opd, :patients_ref, :postmor_perf, :hospital_id, :designation_id,:emp_treasury_id, :month_id, :year
  belongs_to:district
  belongs_to:division
  belongs_to:employee_sanction_working
  belongs_to:hospital
  belongs_to:employee
  belongs_to:designation
  belongs_to:month

	validates_numericality_of :court_presence, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :emer_calls, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :emer_duty, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :image_tests, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :lab_tests, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :leave_taken, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :mlc_perf, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :op_caesarion, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :op_major, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :op_minor, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :patients_admit, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :patients_opd, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :patients_ref, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :postmor_perf, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"

def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |performaone|
      csv << performaone.attributes.values_at(*column_names)
    end
  end
end



end
